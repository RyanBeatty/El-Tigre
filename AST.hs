-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
module AST where

type Identifier = String

data Exp =
    IntLit Int
  | StringLit Identifier
  deriving (Show)

data LValue =
    Var Identifier
  | RecField LValue Identifier
  | ArrSubscript LValue Exp
  deriving (Show)

-- A declaration.
data Dec =
    TDec TypeDec
  | VDec VarDec
  | FDec FunDec
  deriving (Show)

-- A function declaration can either be a procedure
-- declaration (no return type) or a function
-- declaration (has return type).
data FunDec =
    ProcDec Identifier [TyField] Exp
  | FunDec Identifier [TyField] Identifier Exp
  deriving (Show)

-- Type declaration
data TypeDec = TypeDec Identifier Type
  deriving (Show)

-- The type of a type declaration
data Type =
    Type Identifier
  | Record [TyField]
  | Array Identifier
  deriving (Show)

-- Field in a Record
data TyField = TyField Identifier Identifier
  deriving (Show)

-- Variable declarations in Tiger language.
-- VarDecL deals with case where the type is specified.
data VarDec =
    VarDec Identifier Exp
  | VarDecL Identifier Identifier Exp
  deriving (Show)
