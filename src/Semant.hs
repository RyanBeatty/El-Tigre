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
transTy  :: Env.TEnv -> AST.Type -> Types.Type
transTy = undefined

transDec :: Env.VEnv -> Env.TEnv -> AST.Dec -> Either String (Env.VEnv, Env.TEnv)
transDec venv tenv (AST.VarDec name vty initializer) =
    -- Translate initializer expression.
    let ExpType { expr = expr, ty = ety } = transExp venv tenv initializer
    -- Check if variable declaration has an explicit type.
    in case vty of
        -- Typed variable declarations must have matching types between specified
        -- type and init expression type.
        -- TODO: Add handling NIL init expression type.
        Just t  -> case getType t of
                    Just t' -> if ety == t'
                                then Right (newVarEntry t', tenv)
                                else Left "variable declaration needs consistent type."
                    Nothing -> Left $ "Undeclared type <" ++ t ++ ">"
        -- Untyped variable declarations take the type of their init expression,
        -- So add new entry in var env with init expression type.
        Nothing -> Right (newVarEntry ety, tenv)
    where newVarEntry etype = Sym.enterName (name, makeVarEntry etype) venv
          getType x = Sym.lookName tenv x

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
transSeq :: Env.VEnv -> Env.TEnv -> [AST.Exp] -> ExpType
transSeq venv tenv [x]    = transExp venv tenv x
transSeq venv tenv (_:xs) = transSeq venv tenv xs  

-- TODO: Add actual error propagation. Something like changing the type to
-- Either String ExpType.
transExp :: Env.VEnv -> Env.TEnv -> AST.Exp -> ExpType
transExp venv tenv (AST.IntLit _)    = makeExpType () Types.INT
transExp venv tenv (AST.StringLit _) = makeExpType () Types.STRING
transExp venv tenv (AST.Neg _)       = makeExpType () Types.INT
transExp venv tenv (AST.ArithOp _ left right)
    | checkInt (transExp venv tenv left) && checkInt (transExp venv tenv right) = makeExpType () Types.INT
    | otherwise = error "arithmetic operators need two ints"
transExp venv tenv (AST.CompOp _ left right)
    | checkInt (transExp venv tenv left) && checkInt (transExp venv tenv right) = makeExpType () Types.INT
    | otherwise = error "comparison operators require two ints"
transExp venv tenv (AST.LogOp _ left right)
    | checkInt (transExp venv tenv left) && checkInt (transExp venv tenv right) = makeExpType () Types.INT
    | otherwise = error "comparison operators require two ints"
transExp venv tenv (AST.Let decs body) =
    case transDecs venv tenv decs of
        Left msg            -> error msg
        Right (venv', tenv') -> transSeq venv' tenv' body
transExp venv tenv (AST.LVal (AST.Var name)) =
    case Sym.lookName venv name of
        Just varEntry -> makeExpType () (envty varEntry)
        Nothing       -> error "undeclared variable"

testTrans :: String -> IO ()
testTrans input = 
    case runParser input of
        Right e -> print $ transExp Env.baseVEnv Env.baseTEnv e
        Left msg -> print msg
