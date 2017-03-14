-- Contains the data type definition of the abstract syntax
-- of the Tiger programming language
-- TODO: I can probably symplify a lot of the abstract syntax.
module AST where

import qualified Symbol as Sym (Symbol, SymbolMap)

type Identifier = String

data Program = Program {
    rootExp   :: Exp
  , symbolMap :: Sym.SymbolMap
} deriving (Show)

data Exp =
    LVal LValue
  | Nil
  | Seq [Exp]
  | IntLit Int
  | StringLit String
  | Neg Int
  | FunCall Sym.Symbol [Exp]
  | ArithOp AOp Exp Exp
  | CompOp COp Exp Exp
  | LogOp LOp Exp Exp
  | RecExp Sym.Symbol [Field]
  | ArrExp Sym.Symbol Exp Exp
  | Assign LValue Exp
  | Branch Exp Exp (Maybe Exp)
  | While Exp Exp
  | For Sym.Symbol Exp Exp Exp
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
    Var Sym.Symbol
  | RecField LValue Sym.Symbol
  | ArrSubscript LValue Exp
  deriving (Show)

-- Represents an initialized field in a record.
data Field = Field Sym.Symbol Exp
  deriving (Show)

-- A declaration.
data Dec =
    TypeDec Sym.Symbol Type
  -- A variable declaration can specify a explicit type.
  | VarDec Sym.Symbol (Maybe Sym.Symbol) Exp
  -- A function declaration can either be a procedure declaration (no return
  -- type) or a function declaration (has return type).
  | FunDec Sym.Symbol [TyField] (Maybe Sym.Symbol) Exp
  deriving (Show)

-- The type of a type declaration
data Type =
    Type Sym.Symbol
  | Record [TyField]
  | Array Sym.Symbol
  deriving (Show)

-- Field in a Record
data TyField = TyField Sym.Symbol Sym.Symbol
  deriving (Show)
