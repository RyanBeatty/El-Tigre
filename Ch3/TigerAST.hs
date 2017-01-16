-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
module TigerAST where

data Expr =
    IntLit Int
  | StringLit String
  deriving (Show)


data LValue =
    Var String
  | RecField LValue String

  deriving (Show)