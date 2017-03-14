-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
-- TODO: I can probably symplify a lot of the abstract syntax.
module AST where

import Symbol (Symbol)

type Identifier = String

data Exp =
    LVal LValue
  | Nil
  | Seq [Exp]
  | IntLit Int
  | StringLit String
  | Neg Int
  | FunCall Symbol [Exp]
  | ArithOp AOp Exp Exp
  | CompOp COp Exp Exp
  | LogOp LOp Exp Exp
  | RecExp Symbol [Field]
  | ArrExp Symbol Exp Exp
  | Assign LValue Exp
  | Branch Exp Exp (Maybe Exp)
  | While Exp Exp
  | For Symbol Exp Exp Exp
  | Break
  | Let [Dec] [Exp]
  deriving (Show)

-- Arithmetic operator types.
data AOp = Plus | Minus | Div | Mult
  deriving (Show)

-- Comparison operator types.
data COp = Eq | Neq | Gt | Lt | Ge | Le
  deriving (Show)

-- Logical operator types.
data LOp = And | Or
  deriving (Show)

data LValue =
    Var Symbol
  | RecField LValue Symbol
  | ArrSubscript LValue Exp
  deriving (Show)

-- Represents an initialized field in a record.
data Field = Field Symbol Exp
  deriving (Show)

-- A declaration.
data Dec =
    TypeDec Symbol Type
  -- A variable declaration can specify a explicit type.
  | VarDec Symbol (Maybe Symbol) Exp
  -- A function declaration can either be a procedure declaration (no return
  -- type) or a function declaration (has return type).
  | FunDec Symbol [TyField] (Maybe Symbol) Exp
  deriving (Show)

-- The type of a type declaration
data Type =
    Type Symbol
  | Record [TyField]
  | Array Symbol
  deriving (Show)

-- Field in a Record
data TyField = TyField Symbol Symbol
  deriving (Show)
