module Symbol () where

import Control.Monad.State

-- TODO: See if I can use a faster hash map library.
import qualified Data.Map as Map

-- Every identifier (variable, function, type names, etc...)
-- maps to a symbol. Symbols are faster than strings to
-- check for equality.
type Symbol = Int

type Id = String

-- A symbol map maps identifiers to symbols
type SMap = Map.Map Id Symbol

-- A symbol table has a symbol map and contains the next
-- symbol that should be used for a new identifier.
data SymMap = SymMap {
      table :: SMap
    , nextSym :: Symbol
} deriving (Show)

type SymState = State SymMap Symbol

-- Construct a SymMap.
symMap :: SMap -> Symbol -> SymMap
symMap smap next = SymMap { table = smap, nextSym = next }

-- Construct an empty SymMap.
newSymMap :: SymMap
newSymMap = symMap Map.empty 0

-- Return symbol that the identifier maps to if it exists.
-- If it doesn't, create a new mapping.
symbol :: Id -> SymState
symbol name = do
    -- Get the current SymMap and try to lookup name.
    curState <- get
    let t = table curState
    case Map.lookup name t of
        Just sym -> return sym
        Nothing  -> do
            -- Make new mapping.
            let sym' = nextSym curState
            let t'   = Map.insert name sym' t
            put $ symMap t' (succ sym')
            return sym'
