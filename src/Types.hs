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
    deriving (Show, Eq)

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
