module Semant () where

import AST
import Env
import Parser (runParser)
import qualified Symbol as Sym
import qualified Translate as Trans
import Types

data ExpType = ExpType {
      expr :: Trans.Exp
    , ty :: Types.Type
} deriving (Show)

makeExpType :: Trans.Exp -> Types.Type -> ExpType
makeExpType e t = ExpType { expr = e, ty = t }

checkInt :: ExpType -> Bool
checkInt expty = ty expty == Types.INT

--transVar :: Env.VEnv -> Env.TEnv -> AST.Var -> ExpType
--transVar = undefined
transTy  :: Env.TEnv -> AST.Type -> Either String Types.Type
-- Array type declarations are translated by looking up the name of their type
-- and returning a Types.ARRAY.
transTy tenv (AST.Array name) =
    case Sym.lookName tenv name of
        Nothing -> Left $ "Undeclared Type <" ++ name ++ ">"
        -- TODO: Figure out how to handle Unique. Maybe use the State Monad?
        Just t  -> Right $ Types.ARRAY t (Types.Unique 0)

transDec :: Env.VEnv -> Env.TEnv -> AST.Dec -> Either String (Env.VEnv, Env.TEnv)
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
                                then Right (newVarEntry t', tenv)
                                else Left $ "Variable Type Mismatch. Declared <" ++
                                            (show t') ++ "> Got <" ++ (show ety) ++ ">"
                    Nothing -> Left $ "Undeclared Type <" ++ t ++ ">"
        -- Untyped variable declarations take the type of their init expression,
        -- So add new entry in var env with init expression type.
        Nothing -> Right (newVarEntry ety, tenv)
    where newVarEntry etype = Sym.enterName (name, makeVarEntry etype) venv
          getType x = Sym.lookName tenv x
-- Type declarations are first translated to a Types.Type and added to the type env.
transDec venv tenv (AST.TypeDec name t) = do
    t' <- transTy tenv t
    Right (venv, Sym.enterName (name, t') tenv)

-- Translate a list of declrations and modify the var env and type env accordingly.
transDecs :: Env.VEnv -> Env.TEnv -> [AST.Dec] -> Either String (Env.VEnv, Env.TEnv)
transDecs venv tenv []     = Right (venv, tenv)
transDecs venv tenv [x]    = transDec venv tenv x
transDecs venv tenv (x:xs) = do
    (venv', tenv') <- transDec venv tenv x
    transDecs venv' tenv' xs 

-- This is really only supposed to be used to translate a Seq expression
-- and the list of the expressions in the body of the Let expression.
-- NOTE: This function assumes that the list of expressions is not empty.
-- TODO: This is sort of a hack because I didn't let the body of a 
-- Let expression be an Exp so that Seq could be used. Figure out a more
-- elegant solution than this.
transSeq :: Env.VEnv -> Env.TEnv -> [AST.Exp] -> Either String ExpType
transSeq venv tenv [x]    = transExp venv tenv x
transSeq venv tenv (_:xs) = transSeq venv tenv xs  

-- TODO: Theres alot of code duplication/similar patterns here for the binary
-- operation expressions. See if I can factor this out to make things simpler.
transExp :: Env.VEnv -> Env.TEnv -> AST.Exp -> Either String ExpType
transExp venv tenv (AST.IntLit _)    = Right $ makeExpType () Types.INT
transExp venv tenv (AST.StringLit _) = Right $ makeExpType () Types.STRING
transExp venv tenv (AST.Neg _)       = Right $ makeExpType () Types.INT
transExp venv tenv (AST.ArithOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    if checkInt exptype1 && checkInt exptype2
        then Right $ makeExpType () Types.INT
        else Left $ "Arithmetic operators need two ints. Got <" ++
                    (show $ ty exptype1) ++ "> and <" ++
                    (show $ ty exptype2) ++ ">"
-- TODO: Add type checking for comparing arrays and records and strings
transExp venv tenv (AST.CompOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    if checkInt exptype1 && checkInt exptype2
        then Right $ makeExpType () Types.INT
        else Left $ "Comparison operators require two ints. Got <" ++
                    (show $ ty exptype1) ++ "> and <" ++
                    (show $ ty exptype2) ++ ">"
transExp venv tenv (AST.LogOp _ left right) = do
    exptype1 <- transExp venv tenv left
    exptype2 <- transExp venv tenv right
    if checkInt exptype1 && checkInt exptype2
        then Right $ makeExpType () Types.INT
        else Left $ "Logical operators require two ints. Got <" ++
                    (show $ ty exptype1) ++ "> and <" ++
                    (show $ ty exptype2) ++ ">"
transExp venv tenv (AST.Let decs body) = do
    -- Translate the declarations and then translate the body using the updated
    -- variable and type environments. The type of the last expression of the
    -- body is the result type for the entire Let expression.
    (venv', tenv') <- transDecs venv tenv decs
    transSeq venv' tenv' body
transExp venv tenv (AST.LVal (AST.Var name)) =
    case Sym.lookName venv name of
        Just varEntry -> Right $ makeExpType () (envty varEntry)
        Nothing       -> Left $ "Undeclared variable <" ++ name ++ ">"

testTrans :: String -> IO ()
testTrans input = 
    case runParser input of
        Right e -> print $ transExp Env.baseVEnv Env.baseTEnv e
        Left msg -> print msg
