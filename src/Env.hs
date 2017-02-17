module Env () where

import qualified Symbol as Sym
import Types

data EnvEntry = VarEntry  { ty :: Types.Type }
              | FuncEntry { formals :: [Types.Type], result :: Types.Type }
              deriving (Show)

--baseTEnv :: Sym.SymTable Types.Types

--baseVEnv :: Sym.SymTable EnvEntry

