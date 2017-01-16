-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
module AST where

data Expr =
    IntLit Int
  | StringLit String
  deriving (Show)

data Dec =
    TDec TypeDec
  | VDec VarDec
  deriving (Show)

-- Type declaration
data TypeDec = TypeDec String Type
  deriving (Show)

-- The type of a type declaration
data Type =
    Type String
  | Record [TyField]
  | Array String
  deriving (Show)

-- Field in a Record
data TyField = TyField String String
  deriving (Show)

-- Variable declarations in Tiger language.
-- VarDecL deals with case where the type is specified.
data VarDec =
    VarDec String Expr
  | VarDecL String String Expr
  deriving (Show)


data LValue =
    Var String
  | RecField LValue String
  deriving (Show)