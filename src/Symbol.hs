-- Implements the symbol table interface that will be used 
-- for type checking.

module Symbol (
    makeSymbol,
    Symbol,
    SymbolMap,
    SymbolTable,
    uniqueId,
    name,
    emptySymbolMap,
    symbol,
    look,
    enter,
    --Symbol.lookName,
    --Symbol.enterName,
    --Symbol.getSymbol,
    Symbol.fromList
) where

import Control.Applicative
import Control.Monad.State
import qualified Data.COrdering as COrd
-- TODO: See if I can use a faster hash map library.
import qualified Data.Map as Map
import qualified Data.Tree.AVL as AVL

type Id = String

-- Every identifier (variable, function, type names, etc...)
-- maps to a symbol. Symbols are faster than strings to
-- check for equality.
data Symbol = Symbol {
    uniqueId :: Int
  , name     :: String
} deriving (Show, Eq, Ord)
--type Symbol = (Int, Id)

-- An SymbolMap maps identifiers to symbols
type SMap = Map.Map Id Symbol

-- A symbol map has an smap and contains the next
-- symbol that should be used for a new identifier.
data SymbolMap = SymbolMap {
      smap :: SMap
    , nextId :: Int
} deriving (Show)

--type SymState a = State SymMap a

makeSymbol :: Int -> Id -> Symbol
makeSymbol u n = Symbol { uniqueId = u, name = n}

-- Construct a SymbolMap.
makeSymbolMap :: SMap -> Int -> SymbolMap
makeSymbolMap smap next = SymbolMap { smap = smap, nextId = next }

-- Construct an empty SymbolMap.
-- NOTE: 10 is used for initial next symbol value because built in function
-- env in Env.hs has 10 elements that must first be populated. So when we are lexing
-- the first valid symbol int should be 10 to be safe.
emptySymbolMap :: SymbolMap
emptySymbolMap = makeSymbolMap Map.empty 10

-- Return the Symbol for an identifier. If the identifier is not mapped,
-- create a new mapping.
symbol :: Id -> SymbolMap -> (Symbol, SymbolMap)
symbol name sm =
  case Map.lookup name (smap sm) of
    Just s  -> (s, sm)
    Nothing -> let u  = nextId sm
                   s' = makeSymbol u name
                   sm' = Map.insert name s' (smap sm)
               in (s', makeSymbolMap sm' (succ u))

-- A SymbolTable maps Symbols to bindings.
type SymbolTable a = Map.Map Symbol a

-- Build a SymbolTable from a list of String and binding pairs.
-- NOTE: This function assumes that all strings are unique.
fromList :: [(String, a)] -> SymbolTable a
fromList xs = Map.fromList $ zipWith zipper xs [0..(pred $ length xs)]
  where zipper (name, binding) sym = (makeSymbol sym name, binding)

-- Lookup the binding of a Symbol if it exists.
look :: Symbol -> SymbolTable a -> Maybe a
look = Map.lookup

-- Map Symbol to the new binding.
enter :: Symbol -> a -> SymbolTable a -> SymbolTable a
enter = Map.insert
