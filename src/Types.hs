-- Contains the semantic types of the Tiger language.

module Types (
    Type(..),
    TypeError,
    makeUndeclaredVar,
    makeUndeclaredType,
    makeUnexpectedType,
    makeTypeMismatch,
    Unique,
    Types.uniqueSet
) where

import AST (Identifier)
import Symbol (Symbol, name)

type Unique = Int

uniqueSet :: [Unique]
uniqueSet = [0..]

data Type =
      INT
    | STRING
    | RECORD [(Symbol.Symbol, Type)] Unique
    | ARRAY Type Unique
    | NIL
    | UNIT
    -- TODO: Need to add Unique here. Use tuple, IORef, MVar, TVar?
    | NAME Symbol.Symbol (Maybe Type)
    deriving (Show)

instance Eq Type where
    (NAME _ t1)   == (NAME _ t2)     = t1 == t2
    (NAME _ t1)   == INT             = t1 == return INT
    INT           == (NAME _ t1)     = return INT == t1
    (NAME _ t1)   == STRING          = t1 == return STRING
    STRING        == (NAME _ t1)     = return STRING == t1
    (RECORD _ u1) == (RECORD _ u2)   = u1 == u2
    (RECORD _ _)  == NIL             = True
    NIL           == (RECORD _ _)    = True
    INT           == INT             = True
    STRING        == STRING          = True
    NIL           == NIL             = True
    UNIT          == UNIT            = True
    _             == _               = False

data TypeError =
      UndeclaredVar Identifier
    | UndeclaredType Identifier
    | UnexpectedType Type Type
    | TypeMismatch Type Type
    deriving (Show, Eq)

makeUndeclaredVar :: Symbol.Symbol -> TypeError
makeUndeclaredVar s = UndeclaredVar (Symbol.name s)

makeUndeclaredType :: Symbol.Symbol -> TypeError
makeUndeclaredType s = UndeclaredType (Symbol.name s)

makeUnexpectedType :: Type -> Type -> TypeError
makeUnexpectedType t1 t2 = UnexpectedType t1 t2

makeTypeMismatch :: Type -> Type -> TypeError
makeTypeMismatch t1 t2 = TypeMismatch t1 t2
