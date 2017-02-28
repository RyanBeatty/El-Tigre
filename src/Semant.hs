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

equalTypes :: ExpType -> ExpType -> Types.Type -> Bool
equalTypes (ExpType {expr=_, ty=t1}) (ExpType {expr=_, ty=t2}) ty = t1 == ty && t2 == ty

transExp :: Env.VEnv -> Env.TEnv -> AST.Exp -> ExpType
transExp venv tenv (AST.Plus left right)
    | equalTypes (transExp venv tenv left) (transExp venv tenv right) Types.INT = makeExpType () Types.INT
    | otherwise = error "need two ints"

--testTrans :: String -> ExpType
testTrans input = 
    case runParser input of
        Right e -> print $ transExp Env.baseVEnv Env.baseTEnv e
        Left msg -> print msg
