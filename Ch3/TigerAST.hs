-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
module TigerAST where

data Expr =
    IntLit Int
  | StringLit String
  deriving (Show)

data TypeDec = TypeDec String Type
  deriving (Show)

data Type =
    Type String
  | Record [TyField]
  | Array String
  deriving (Show)

data TyField = TyField String String
  deriving (Show)

-- Grammar for variable declarations in Tiger language.
-- VarDecL deals with case where the type is specified.
data VarDec =
    VarDec String Expr
  | VarDecL String String Expr
  deriving (Show)


data LValue =
    Var String
  | RecField LValue String
  deriving (Show)