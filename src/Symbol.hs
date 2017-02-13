module Symbol () where

import Control.Monad.State
import qualified Data.Map as Map

type Symbol = Int

type Id = String

type SymMap = Map.Map Id Symbol

-- A symbol table has a table that maps identifiers to
-- symbols and contains the next symbol that should be
-- used for a new identifier.
data SymTable = SymTable {
      table :: SymMap
    , nextSym :: Symbol
} deriving (Show)

type SymState = State SymTable Symbol

-- Construct a SymTable.
symTable :: SymMap -> Symbol -> SymTable
symTable smap next = SymTable { table = smap, nextSym = next }

-- Construct an empty SymTable.
newSymTable :: SymTable
newSymTable = symTable Map.empty 0

-- Return symbol that the identifier maps to if it exists.
-- If it doesn't, create a new mapping.
symbol :: Id -> SymState
symbol name = do
    curState <- get
    let t = table curState
    case Map.lookup name t of
        Just sym -> return sym
        Nothing  -> do
            let sym' = nextSym curState
            let t'   = Map.insert name sym' t
            put (symTable t' (succ sym'))
            return sym'
