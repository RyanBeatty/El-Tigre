-- Implements the symbol table interface that will be used 
-- for type checking.

module Symbol (
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

---- Return symbol that the identifier maps to if it exists.
---- If it doesn't, create a new mapping.
--symbol :: Id -> SymState Symbol
--symbol name = do
--    -- Get the current SymMap and try to lookup name.
--    curState <- get
--    let sm = smap curState
--    case Map.lookup name sm of
--        Just sym -> return sym
--        Nothing  -> do
--            -- Make new mapping.
--            let sym' = nextSym curState
--            let sm'   = Map.insert name sym' sm
--            put $ makeSymMap sm' (succ sym')
--            return sym'

--lookupSymbol :: Id -> SymState (Maybe Symbol)
--lookupSymbol s = do
--    -- Get the current SymMap and try to lookup name.
--    curState <- get
--    let sm = smap curState
--    return $ Map.lookup s sm

---- An STable is an avl tree that contains Symbol to binding mappings.
--type STable a = AVL.AVL (Symbol, a)

---- A SymTable has a SymMap for mapping identifiers to Symbols and a
---- STable mapping Symbols to bindings.
--data SymTable a = SymTable {
--      symMap :: SymMap
--    , stable :: STable a
--} deriving (Show)

---- Combining comparison function that takes two STable elements and
---- returns the first element if both of the symbol parts are equal.
--elemComp :: (Symbol, a) -> (Symbol, a) -> COrd.COrdering (Symbol, a)
--elemComp s = COrd.fstByCC (\(s1, _) (s2, _) -> compare s1 s2) s

---- Combining comparison function that takes a symbol and an STable
---- element and returns the STable element if both symbol parts
---- are equal.
--symComp :: Symbol -> (Symbol, a) -> COrd.COrdering (Symbol, a)
--symComp s el = COrd.sndByCC (\s1 (s2, _) -> compare s1 s2) s el

---- Make a SymTable.
--makeSymTable :: SymMap -> STable a -> SymTable a
--makeSymTable m t = SymTable { symMap = m, stable = t }

---- Takes a list of pairs with the Id's as the first element and
---- creates a SymTable from the list.
--fromList :: [(Id, a)] -> SymTable a
--fromList xs = makeSymTable sm tree
--    where (xs', sm) = runState action newSymMap
--          -- create a SymState action that will map all of the Id's in the
--          -- input list to Symbols. and return the input list with the Id's
--          -- replaced by the Symbol the Id maps to.
--          action    = mapM (\(n, a) -> symbol n >>= \s -> return (s, a)) xs
--          -- Take the result of action and build the symbol table tree.
--          tree      = AVL.asTree elemComp xs'

---- Make an empty SymTable.
--empty :: SymTable a
--empty = makeSymTable newSymMap AVL.empty

---- Return the binding of a symbol if it exists.
--look :: SymTable a -> Symbol -> Maybe a
--look t sym = snd <$> AVL.tryRead (stable t) (symComp sym)

---- Create a new binding with the given symbol.
--enter :: (Symbol, a) -> SymTable a -> SymTable a
--enter element t = makeSymTable m (AVL.push (elemComp element) element (stable t))
--    where m       = symMap t
--          st      = stable t

---- Create a new binding with the given symbol. Or do nothing if the binding already exists.
--enterName :: (Id, a) -> SymTable a -> SymTable a
--enterName (name, binding) t = enter (s, binding) (makeSymTable m' st)
--    where m       = symMap t
--          st      = stable t
--          (s, m') = runState (symbol name) m 

---- Return the binding of a name if it exists.
--lookName :: SymTable a -> Id -> Maybe a
--lookName t name = getSymbol t name >>= look t

--getSymbol :: SymTable a -> Id -> Maybe Symbol
--getSymbol t name = fst $ runState (lookupSymbol name) (symMap t)
