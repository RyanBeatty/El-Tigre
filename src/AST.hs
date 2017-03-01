-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
-- TODO: I can probably symplify a lot of the abstract syntax.
module AST where

type Identifier = String

data Exp =
    LVal LValue
  | Nil
  | Seq [Exp]
  | IntLit Int
  | StringLit Identifier
  | Neg Int
  | FunCall Identifier [Exp]
  | ArithOp AOp Exp Exp
  | CompOp COp Exp Exp
  | LogOp LOp Exp Exp
  | RecExp Identifier [Field]
  | ArrExp Identifier Exp Exp
  | Assign LValue Exp
  | Branch Exp Exp (Maybe Exp)
  | While Exp Exp
  | For Identifier Exp Exp Exp
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
    Var Identifier
  | RecField LValue Identifier
  | ArrSubscript LValue Exp
  deriving (Show)

-- Represents an initialized field in a record.
data Field = Field Identifier Exp
  deriving (Show)

-- A declaration.
data Dec =
    TypeDec Identifier Type
  -- A variable declaration can specify a explicit type.
  | VarDec Identifier (Maybe Identifier) Exp
  -- A function declaration can either be a procedure declaration (no return
  -- type) or a function declaration (has return type).
  | FunDec Identifier [TyField] (Maybe Identifier) Exp
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
