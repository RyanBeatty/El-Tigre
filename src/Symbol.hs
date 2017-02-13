module Symbol () where

import Control.Monad.State
import Data.Map

type Symbol = Int

type Id = String

type SymMap = Map

-- A symbol table has a table that maps identifiers to
-- symbols and contains the next symbol that should be
-- used for a new identifier.
data SymTable = SymTable {
      table :: SymMap Id Symbol
    , nextSym :: Symbol
} deriving (Show)

type SymState = State SymTable

-- Construct an empty SymTable.
symTable :: SymTable
symTable = SymTable { table = empty, nextSym = 0 }
