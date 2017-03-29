module Semant (transProg, ExpType, ty) where

import Control.Monad.State
import qualified Control.Monad.Trans.State as ST

import qualified AST
import qualified Env (VEnv, TEnv, buildBaseEnvs, varEntryType, addNewVarEntry, addNewTypeEntry, lookupVarEntry, lookupTypeEntry) 
import qualified Parser as P (runParser)
import qualified Translate as Trans (Exp)
import qualified Types as T

data ExpType = ExpType {
      expr :: Trans.Exp
    , ty   :: T.Type
} deriving (Show)

type Trans a = ST.StateT [T.Unique] (Either T.TypeError) a

-- Returns the next unique value to use for a RECORD, ARRAY, or NAME.
genUnique :: Trans T.Unique
genUnique = do
    xs <- get
    put $ tail xs
    return $ head xs

makeExpType :: Trans.Exp -> T.Type -> ExpType
makeExpType e t = ExpType { expr = e, ty = t }

checkInt :: ExpType -> Trans ()
checkInt exptype
    | ty exptype == T.INT = return ()
    | otherwise           = lift . Left $ T.makeUnexpectedType T.INT (ty exptype)

checkUnit :: ExpType -> Trans ()
checkUnit exptype
    | ty exptype == T.UNIT = return ()
    | otherwise            = lift . Left $ T.makeUnexpectedType T.UNIT (ty exptype)

checkMatchingTypes :: ExpType -> ExpType -> Trans ()
checkMatchingTypes e1 e2
    | ty e1 == ty e2 = return ()
    | otherwise      = lift . Left $ T.makeTypeMismatch (ty e1) (ty e2)

--transVar :: Env.VEnv -> Env.TEnv -> AST.Var -> ExpType
--transVar = undefined
transTy  :: Env.TEnv -> AST.Type -> Trans T.Type
-- A type synonym is just looked up in the type environment.
-- TODO: handle mutually recursive types.
transTy tenv (AST.Type sym) =
    case Env.lookupTypeEntry sym tenv of
        Nothing -> lift . Left $ T.makeUndeclaredType sym
        Just t  -> return t
-- Array type declarations are translated by looking up the name of their type
-- and returning a T.ARRAY.
transTy tenv (AST.Array sym) =
    case Env.lookupTypeEntry sym tenv of
        Nothing -> lift . Left $ T.makeUndeclaredType sym
        Just t  -> do u <- genUnique
                      return $ T.ARRAY t u
transTy tenv (AST.Record tyfields) = do
    tyfields' <- mapM (\(AST.TyField s ts) -> helper ts tenv >>= \t -> return (s, t)) tyfields
    u <- genUnique
    return $ T.RECORD tyfields' u

helper tsym tenv =
    case Env.lookupTypeEntry tsym tenv of
        Nothing -> lift . Left $ T.makeUndeclaredType tsym
        Just t  -> return t

transDec :: Env.VEnv -> Env.TEnv -> AST.Dec -> Trans (Env.VEnv, Env.TEnv)
transDec venv tenv (AST.VarDec sym vtype initializer) = do
    -- Translate initializer expression.
    -- TODO: Should not do this here. Possible to override undeclared type error.
    exptype <- transExp venv tenv initializer
    let ety = ty exptype
    -- Check if variable declaration has an explicit type.
    case vtype of
        -- Typed variable declarations must have matching types between specified
        -- type and init expression type.
        -- TODO: Add handling NIL init expression type.
        Just tsym  -> case Env.lookupTypeEntry tsym tenv of
                    Just t -> if T.checkCompatibleTypes t ety
                                then return (Env.addNewVarEntry sym t venv, tenv)
                                else lift . Left $ T.makeUnexpectedType t ety
                    Nothing -> lift . Left $ T.makeUndeclaredType tsym
        -- Untyped variable declarations take the type of their init expression,
        -- So add new entry in var env with init expression type.
        Nothing -> return (Env.addNewVarEntry sym ety venv, tenv)
-- Type declarations are first translated to a T.Type and added to the type env.
transDec venv tenv (AST.TypeDec sym t) = do
    t' <- transTy tenv t
    return (venv, Env.addNewTypeEntry sym t' tenv)
--transDec venv tenv (AST.FunDec funsym params retsym body) =
--    case Env.lookupFuncEntry funsym venv of
--        Nothing       -> lift . Left $ T.makeUndeclaredType funsym
--        Just funentry -> 

-- Translate a list of declrations and modify the var env and type env accordingly.
transDecs :: Env.VEnv -> Env.TEnv -> [AST.Dec] -> Trans (Env.VEnv, Env.TEnv)
transDecs venv tenv []     = return (venv, tenv)
transDecs venv tenv [x]    = transDec venv tenv x
transDecs venv tenv (x:xs) = do
    (venv', tenv') <- transDec venv tenv x
    transDecs venv' tenv' xs 

-- Translate a sequence of expressions. The type of the last expression
-- is the type of the entire sequence.
transSeq :: Env.VEnv -> Env.TEnv -> [AST.Exp] -> Trans ExpType
transSeq venv tenv []     = return $ makeExpType () T.UNIT
transSeq venv tenv [x]    = transExp venv tenv x
transSeq venv tenv (x:xs) = transExp venv tenv x >> transSeq venv tenv xs  

-- TODO: Theres alot of code duplication/similar patterns here for the binary
-- operation expressions. See if I can factor this out to make things simpler.
transExp :: Env.VEnv -> Env.TEnv -> AST.Exp -> Trans ExpType
transExp venv tenv (AST.IntLit _)    = return $ makeExpType () T.INT
transExp venv tenv (AST.StringLit _) = return $ makeExpType () T.STRING
transExp venv tenv (AST.Neg _)       = return $ makeExpType () T.INT
transExp venv tenv (AST.ArithOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    checkMatchingTypes exptype1 exptype2
    return $ makeExpType () T.INT
-- TODO: Add type checking for comparing arrays and records and strings
transExp venv tenv (AST.CompOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    checkMatchingTypes exptype1 exptype2
    return $ makeExpType () T.INT
transExp venv tenv (AST.LogOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    checkMatchingTypes exptype1 exptype2
    return $ makeExpType () T.INT
transExp venv tenv (AST.Let decs body) = do
    -- Translate the declarations and then translate the body using the updated
    -- variable and type environments. The type of the last expression of the
    -- body is the result type for the entire Let expression.
    (venv', tenv') <- transDecs venv tenv decs
    transSeq venv' tenv' body
transExp venv tenv (AST.LVal (AST.Var sym)) =
    case Env.lookupVarEntry sym venv of
        Just varEntry -> return $ makeExpType () (Env.varEntryType varEntry)
        Nothing       -> lift . Left $ T.makeUndeclaredVar sym
-- The type of a Seq is the type of its last expression. If it has no
-- expressions, then it has the UNIT type.
transExp venv tenv (AST.Seq xs) = transSeq venv tenv xs
transExp venv tenv (AST.Branch exp1 exp2 Nothing) = do
    -- Translate condition.
    exptype1 <- transExp venv tenv exp1
    -- Branching condition must be an int.
    checkInt exptype1
    exptype2 <- transExp venv tenv exp2
    return $ makeExpType () (ty exptype2)
transExp venv tenv (AST.Branch exp1 exp2 (Just exp3)) = do
    -- Translate condition.
    exptype1 <- transExp venv tenv exp1
    -- Branching condition must be an int.
    checkInt exptype1
    exptype2 <- transExp venv tenv exp2
    exptype3 <- transExp venv tenv exp3
    -- Both branch types must match.
    checkMatchingTypes exptype2 exptype3
    return $ makeExpType () (ty exptype2)
transExp venv tenv (AST.While exp1 exp2) = do
    exptype1 <- transExp venv tenv exp1
    checkInt exptype1
    exptype2 <- transExp venv tenv exp2
    checkUnit exptype2
    return $ makeExpType () T.UNIT
transExp venv tenv (AST.ArrExp sym lengthexp initexp) =
    case Env.lookupTypeEntry sym tenv of
        Nothing        -> lift . Left $ T.makeUndeclaredType sym
        Just arraytype -> do len <- transExp venv tenv lengthexp
                             checkInt len
                             value <- transExp venv tenv initexp
                             if T.checkCompatibleTypes arraytype (ty value)
                                then genUnique >>= \u -> return $ makeExpType () (T.ARRAY arraytype u)
                                else lift . Left $ T.makeUnexpectedType arraytype (ty value)
transExp venv tenv (AST.RecExp recsym fields) =
    case Env.lookupTypeEntry recsym tenv of
        Nothing      -> lift . Left $ T.makeUndeclaredType recsym
        Just rectype -> do fields' <- mapM (\(AST.Field s e) -> transExp venv tenv e >>= \e' -> return (s, e')) fields
                           let fields'' = map (\(s, e) -> (s, ty e)) fields'
                           u <- genUnique
                           let result = T.RECORD fields'' u
                           if T.checkCompatibleTypes rectype result
                            then return $ makeExpType () result
                            else lift . Left $ T.makeUnexpectedType rectype result


transProg input =
    case P.runParser input of
        Left msg   -> Left msg
        Right prog -> case ST.evalStateT (uncurry transExp (Env.buildBaseEnvs (AST.symbolMap prog)) (AST.rootExp prog)) T.uniqueSet of
                        Left b  -> Left $ show b
                        Right a -> Right a
