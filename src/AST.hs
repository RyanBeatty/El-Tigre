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
  | Plus Exp Exp
  | Minus Exp Exp
  | Div Exp Exp
  | Mult Exp Exp
  | Eq Exp Exp
  | Neq Exp Exp
  | Gt Exp Exp
  | Lt Exp Exp
  | Ge Exp Exp
  | Le Exp Exp
  | And Exp Exp
  | Or Exp Exp
  | RecExp Identifier [Field]
  | ArrExp Identifier Exp Exp
  | Assign LValue Exp
  | Branch Exp Exp (Maybe Exp)
  | While Exp Exp
  | For Identifier Exp Exp Exp
  | Break
  | Let [Dec] [Exp]
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
