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

transDec :: Env.VEnv -> Env.TEnv -> AST.Dec -> (Env.VEnv, Env.TEnv)
transDec venv tenv (AST.VarDec name vty val) =
    let ExpType { expr = expr, ty = ety } = transExp venv tenv val
    in case vty >>= getType of
        Just t  -> if ety == t then (newVarEntry t, tenv) else error "variable declaration needs consistent type."  
        Nothing -> (newVarEntry ety, tenv)
    where newVarEntry etype = Sym.enterName (name, makeVarEntry etype) venv
          getType x = Sym.lookName tenv x

-- Translate a list of declrations and modify the var env and type env accordingly.
transDecs :: Env.VEnv -> Env.TEnv -> [AST.Dec] -> (Env.VEnv, Env.TEnv)
transDecs venv tenv []     = (venv, tenv)
transDecs venv tenv [x]    = transDec venv tenv x
transDecs venv tenv (x:xs) =
    let (venv', tenv') = transDec venv tenv x
    in transDecs venv' tenv' xs 

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
    let (venv', tenv') = transDecs venv tenv decs
    in transSeq venv' tenv' body
transExp venv tenv (AST.LVal (AST.Var name)) =
    case Sym.lookName venv name of
        Just varEntry -> makeExpType () (envty varEntry)
        Nothing       -> error "undeclared variable"

testTrans :: String -> IO ()
testTrans input = 
    case runParser input of
        Right e -> print $ transExp Env.baseVEnv Env.baseTEnv e
        Left msg -> print msg
