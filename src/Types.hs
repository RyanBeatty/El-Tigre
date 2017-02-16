-- Contains the semantic types of the Tiger language.

module Types () where

import Symbol (Symbol)

type Unique = Int

data Type = INT
        | STRING
        | RECORD [(Symbol.Symbol, Type)] Unique
        | ARRAY Type Unique
        | NIL
        | UNIT
        -- TODO: Need to add Unique here. Use tuple, IORef, MVar, TVar?
        | NAME Symbol.Symbol (Maybe Type)