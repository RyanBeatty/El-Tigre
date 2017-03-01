module Semant () where

import AST
import Env
import Parser (runParser)
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

transExp :: Env.VEnv -> Env.TEnv -> AST.Exp -> ExpType
transExp venv tenv (AST.IntLit _)    = makeExpType () Types.INT
transExp venv tenv (AST.StringLit _) = makeExpType () Types.STRING
transExp venv tenv (AST.Neg _)       = makeExpType () Types.INT
transExp venv tenv (AST.ArithOp _ left right)
    | checkInt (transExp venv tenv left) && checkInt (transExp venv tenv right) = makeExpType () Types.INT
    | otherwise = error "need two ints"

testTrans :: String -> IO ()
testTrans input = 
    case runParser input of
        Right e -> print $ transExp Env.baseVEnv Env.baseTEnv e
        Left msg -> print msg
