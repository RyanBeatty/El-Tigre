-- Implements the symbol table interface that will be used 
-- for type checking.

module Symbol (Symbol, SymTable(..), Symbol.empty, Symbol.look, Symbol.enter) where

import Control.Applicative
import Control.Monad.State
import qualified Data.COrdering as COrd
-- TODO: See if I can use a faster hash map library.
import qualified Data.Map as Map
import qualified Data.Tree.AVL as AVL

-- Every identifier (variable, function, type names, etc...)
-- maps to a symbol. Symbols are faster than strings to
-- check for equality.
type Symbol = Int

type Id = String

-- An smap maps identifiers to symbols
type SMap = Map.Map Id Symbol

-- A symbol map has an smap and contains the next
-- symbol that should be used for a new identifier.
data SymMap = SymMap {
      smap :: SMap
    , nextSym :: Symbol
} deriving (Show)

type SymState = State SymMap Symbol

-- Construct a SymMap.
makeSymMap :: SMap -> Symbol -> SymMap
makeSymMap smap next = SymMap { smap = smap, nextSym = next }

-- Construct an empty SymMap.
newSymMap :: SymMap
newSymMap = makeSymMap Map.empty 0

-- Return symbol that the identifier maps to if it exists.
-- If it doesn't, create a new mapping.
symbol :: Id -> SymState
symbol name = do
    -- Get the current SymMap and try to lookup name.
    curState <- get
    let t = smap curState
    case Map.lookup name t of
        Just sym -> return sym
        Nothing  -> do
            -- Make new mapping.
            let sym' = nextSym curState
            let t'   = Map.insert name sym' t
            put $ makeSymMap t' (succ sym')
            return sym'

-- An STable is an avl tree that contains Symbol to binding mappings.
type STable a = AVL.AVL (Symbol, a)

-- A SymTable has a SymMap for mapping identifiers to Symbols and a
-- STable mapping Symbols to bindings.
data SymTable a = SymTable {
      symMap :: SymMap
    , stable :: STable a
} deriving (Show)

-- Combining comparison function that takes two STable elements and
-- returns the first element if both of the symbol parts are equal.
elemComp :: (Symbol, a) -> (Symbol, a) -> COrd.COrdering (Symbol, a)
elemComp s = COrd.fstByCC (\(s1, _) (s2, _) -> compare s1 s2) s

-- Combining comparison function that takes a symbol and an STable
-- element and returns the STable element if both symbol parts
-- are equal.
symComp :: Symbol -> (Symbol, a) -> COrd.COrdering (Symbol, a)
symComp s el = COrd.sndByCC (\s1 (s2, _) -> compare s1 s2) s el

-- Make a SymTable.
makeSymTable :: SymMap -> STable a -> SymTable a
makeSymTable m t = SymTable { symMap = m, stable = t }

-- Make an empty SymTable.
empty :: SymTable a
empty = makeSymTable newSymMap AVL.empty

-- Return the binding of a symbol if it exists.
look :: SymTable a -> Symbol -> Maybe a
look t sym = snd <$> AVL.tryRead (stable t) (symComp sym)

-- Create a new binding with the given symbol.
enter :: (Symbol, a) -> SymTable a -> SymTable a
enter element t = makeSymTable m (AVL.push (elemComp element) element (stable t))
    where m       = symMap t
          st      = stable t
