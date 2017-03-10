module Semant (transProg, ExpType(..), TypeError(..)) where

import Control.Monad.State
import qualified Control.Monad.Trans.State as ST

import AST
import Env
import Parser (runParser)
import qualified Symbol as Sym
import qualified Translate as Trans
import qualified Types as T

data TypeError =
      UndeclaredVar Identifier
    | UndeclaredType Identifier
    | UnexpectedType T.Type T.Type
    | TypeMismatch T.Type T.Type
    deriving (Show, Eq)

data ExpType = ExpType {
      expr :: Trans.Exp
    , ty   :: T.Type
} deriving (Show)

type TransT a = ST.StateT [T.Unique] (Either TypeError) a

-- Returns the next unique value to use for a RECORD, ARRAY, or NAME.
genUnique :: TransT T.Unique
genUnique = do
    xs <- get
    put $ tail xs
    return $ head xs

makeExpType :: Trans.Exp -> T.Type -> ExpType
makeExpType e t = ExpType { expr = e, ty = t }

checkInt :: ExpType -> Bool
checkInt expty = ty expty == T.INT

checkInt' :: ExpType -> TransT ()
checkInt' exptype
    | ty exptype == T.INT = return ()
    | otherwise           = lift . Left $ UnexpectedType T.INT (ty exptype)

--transVar :: Env.VEnv -> Env.TEnv -> AST.Var -> ExpType
--transVar = undefined
transTy  :: Env.TEnv -> AST.Type -> TransT T.Type
-- Array type declarations are translated by looking up the name of their type
-- and returning a T.ARRAY.
transTy tenv (AST.Array name) =
    case Sym.lookName tenv name of
        Nothing -> lift . Left $ UndeclaredType name
        Just t  -> do u <- genUnique
                      return $ T.ARRAY t u

transDec :: Env.VEnv -> Env.TEnv -> AST.Dec -> TransT (Env.VEnv, Env.TEnv)
transDec venv tenv (AST.VarDec name vty initializer) = do
    -- Translate initializer expression.
    exptype <- transExp venv tenv initializer
    let ety = ty exptype
    -- Check if variable declaration has an explicit type.
    case vty of
        -- Typed variable declarations must have matching types between specified
        -- type and init expression type.
        -- TODO: Add handling NIL init expression type.
        Just t  -> case getType t of
                    Just t' -> if t' == ety
                                then return (newVarEntry t', tenv)
                                else lift . Left $ UnexpectedType t' ety
                    Nothing -> lift . Left $ UndeclaredType t
        -- Untyped variable declarations take the type of their init expression,
        -- So add new entry in var env with init expression type.
        Nothing -> return (newVarEntry ety, tenv)
    where newVarEntry etype = Sym.enterName (name, makeVarEntry etype) venv
          getType x = Sym.lookName tenv x
-- Type declarations are first translated to a T.Type and added to the type env.
transDec venv tenv (AST.TypeDec name t) = do
    t' <- transTy tenv t
    return (venv, Sym.enterName (name, t') tenv)

-- Translate a list of declrations and modify the var env and type env accordingly.
transDecs :: Env.VEnv -> Env.TEnv -> [AST.Dec] -> TransT (Env.VEnv, Env.TEnv)
transDecs venv tenv []     = return (venv, tenv)
transDecs venv tenv [x]    = transDec venv tenv x
transDecs venv tenv (x:xs) = do
    (venv', tenv') <- transDec venv tenv x
    transDecs venv' tenv' xs 

-- This is really only supposed to be used to translate a Seq expression
-- and the list of the expressions in the body of the Let expression.
-- TODO: This is sort of a hack because I didn't let the body of a 
-- Let expression be an Exp so that Seq could be used. Figure out a more
-- elegant solution than this.
transSeq :: Env.VEnv -> Env.TEnv -> [AST.Exp] -> TransT ExpType
transSeq venv tenv []     = return $ makeExpType () T.UNIT
transSeq venv tenv [x]    = transExp venv tenv x
transSeq venv tenv (_:xs) = transSeq venv tenv xs  

-- TODO: Theres alot of code duplication/similar patterns here for the binary
-- operation expressions. See if I can factor this out to make things simpler.
transExp :: Env.VEnv -> Env.TEnv -> AST.Exp -> TransT ExpType
transExp venv tenv (AST.IntLit _)    = return $ makeExpType () T.INT
transExp venv tenv (AST.StringLit _) = return $ makeExpType () T.STRING
transExp venv tenv (AST.Neg _)       = return $ makeExpType () T.INT
transExp venv tenv (AST.ArithOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    if checkInt exptype1 && checkInt exptype2
        then return $ makeExpType () T.INT
        else lift . Left $ TypeMismatch (ty exptype1) (ty exptype2)
-- TODO: Add type checking for comparing arrays and records and strings
transExp venv tenv (AST.CompOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    if checkInt exptype1 && checkInt exptype2
        then return $ makeExpType () T.INT
        else lift . Left $ TypeMismatch (ty exptype1) (ty exptype2)
transExp venv tenv (AST.LogOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    if checkInt exptype1 && checkInt exptype2
        then return $ makeExpType () T.INT
        else lift . Left $ TypeMismatch (ty exptype1) (ty exptype2)
transExp venv tenv (AST.Let decs body) = do
    -- Translate the declarations and then translate the body using the updated
    -- variable and type environments. The type of the last expression of the
    -- body is the result type for the entire Let expression.
    (venv', tenv') <- transDecs venv tenv decs
    transSeq venv' tenv' body
transExp venv tenv (AST.LVal (AST.Var name)) =
    case Sym.lookName venv name of
        Just varEntry -> return $ makeExpType () (envty varEntry)
        Nothing       -> lift . Left $ UndeclaredVar name
-- The type of a Seq is the type of its last expression. If it has no
-- expressions, then it has the UNIT type.
transExp venv tenv (AST.Seq xs) = transSeq venv tenv xs
transExp venv tenv (AST.Branch exp1 exp2 Nothing) = do
    -- Translate condition.
    exptype1 <- transExp venv tenv exp1
    checkInt' exptype1
    exptype2 <- transExp venv tenv exp2
    return $ makeExpType () (ty exptype2)
transExp venv tenv (AST.Branch exp1 exp2 (Just exp3)) = do
    -- Translate condition.
    exptype1 <- transExp venv tenv exp1
    checkInt' exptype1
    exptype2 <- transExp venv tenv exp2
    exptype3 <- transExp venv tenv exp3
    -- Both branch types must match.
    if (ty exptype2) /= (ty exptype3)
        then lift . Left $ TypeMismatch (ty exptype2) (ty exptype3)
        else return $ makeExpType () (ty exptype2)

testTrans :: String -> IO ()
testTrans input = 
    case runParser input of
        Right e -> print $ ST.evalStateT (transExp Env.baseVEnv Env.baseTEnv e) T.uniqueSet
        Left msg -> print msg

transProg input =
    case runParser input of
        Right e  -> case ST.evalStateT (transExp Env.baseVEnv Env.baseTEnv e) T.uniqueSet of
                        Right a -> Right a
                        Left b  -> Left $ show b
        Left msg -> Left msg
