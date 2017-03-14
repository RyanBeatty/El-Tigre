-- Implements the symbol table interface that will be used 
-- for type checking.

-- TODO: See if I should add back StateT. I had to do alot of SymbolMap threading
-- when to use this module outisde in other modules.

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
    Symbol.fromList
) where

-- TODO: See if I can use a faster hash map library.
import qualified Data.Map as Map

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
emptySymbolMap :: SymbolMap
emptySymbolMap = makeSymbolMap Map.empty 0

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

-- Build a SymbolTable from a list of String and binding pairs. Uses the passed
-- in SymbolMap to map all strings to Symbols.
fromList :: [(String, a)] -> SymbolMap -> (SymbolTable a, SymbolMap)
fromList xs sm = let (xs', sm') = helper xs sm
                 in (Map.fromList xs', sm')

-- Wrote this quickly to help with fromList.
-- TODO: Refactor this later.
helper :: [(String, a)] -> SymbolMap -> ([(Symbol, a)], SymbolMap)
helper [] sm = ([], sm)
helper ((n, a):xs) sm = let (s, sm') = symbol n sm
                            (xs', sm'') = helper xs sm'
                        in ((s, a) : xs', sm'')

-- Lookup the binding of a Symbol if it exists.
look :: Symbol -> SymbolTable a -> Maybe a
look = Map.lookup

-- Map Symbol to the new binding.
enter :: Symbol -> a -> SymbolTable a -> SymbolTable a
enter = Map.insert
