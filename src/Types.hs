-- Contains the semantic types of the Tiger language.

module Types (
    Type(..),
    checkCompatibleTypes,
    TypeError,
    makeUndeclaredVar,
    makeUndeclaredType,
    makeUnexpectedType,
    makeTypeMismatch,
    Unique,
    Types.uniqueSet
) where

import Control.Applicative

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
    -- TODO: Is this a necessary type?
    | NAME Symbol.Symbol (Maybe Type)
    deriving (Show, Eq)

-- Returns True if two Types can be used in the same expression.
checkCompatibleTypes :: Type -> Type -> Bool
checkCompatibleTypes INT INT                                = True
checkCompatibleTypes STRING STRING                          = True
checkCompatibleTypes (RECORD ts1 _) (RECORD ts2 _)          = ts1 == ts2
checkCompatibleTypes (ARRAY t1 _) (ARRAY t2 _)              = t1 == t2
checkCompatibleTypes NIL NIL                                = True
checkCompatibleTypes UNIT UNIT                              = True
checkCompatibleTypes _ _                                    = False

--checkCompatibleTypes INT INT                                = True
--checkCompatibleTypes STRING STRING                          = True
--checkCompatibleTypes (RECORD _ u1) (RECORD _ u2)            = u1 == u2
--checkCompatibleTypes (ARRAY t1 _) (ARRAY t2 _)                  = t1 == t2
--checkCompatibleTypes NIL NIL                                = True
--checkCompatibleTypes UNIT UNIT                              = True
--checkCompatibleTypes (NAME _ (Just t1)) (NAME _ (Just t2))  = checkCompatibleTypes t1 t2
--checkCompatibleTypes (RECORD _ u1) NIL                      = True
--checkCompatibleTypes NIL (RECORD _ u1)                      = True
--checkCompatibleTypes (NAME _ (Just t)) INT                  = checkCompatibleTypes t INT
--checkCompatibleTypes INT (NAME _ (Just t))                  = checkCompatibleTypes t INT
--checkCompatibleTypes (NAME _ (Just t)) STRING               = checkCompatibleTypes t STRING
--checkCompatibleTypes STRING (NAME _ (Just t))               = checkCompatibleTypes t STRING
--checkCompatibleTypes (ARRAY t _) INT                        = checkCompatibleTypes t INT
--checkCompatibleTypes INT (ARRAY t _)                        = checkCompatibleTypes INT t
--checkCompatibleTypes (ARRAY t _) STRING                     = checkCompatibleTypes t STRING
--checkCompatibleTypes STRING (ARRAY t _)                     = checkCompatibleTypes STRING t
--checkCompatibleTypes _ _                                    = False

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
