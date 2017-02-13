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

-- Construct an empty SymTable.
symTable :: SymMap -> Symbol -> SymTable
symTable smap next = SymTable { table = smap, nextSym = next }

newSymTable :: SymTable
newSymTable = symTable Map.empty 0

-- Return the symbol for the passed in identifier if
-- it exists.
look :: Id -> SymTable -> Maybe Symbol
look name t = Map.lookup name (table t)

type SymState = State SymTable Symbol

--runSymState :: SymState a
--runSymState = runState f symTable

symbol :: Id -> SymState
symbol name = do
    curState <- get
    case look name curState of
        Just sym -> return sym
        Nothing  -> do
            let sym'   = nextSym curState
            let newTable = Map.insert name sym' (table curState)
            put (symTable newTable (succ sym'))
            return sym'
