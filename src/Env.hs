module Env (
    TEnv,
    VEnv,
    EnvEntry(..),
    Env.baseTEnv,
    Env.baseVEnv,
    Env.makeVarEntry
) where

import Symbol (fromList, SymbolTable, SymbolMap)
import Types

data EnvEntry = VarEntry  { envty :: Types.Type }
              | FuncEntry { formals :: [Types.Type], result :: Types.Type }
              deriving (Show)

makeVarEntry :: Types.Type -> EnvEntry
makeVarEntry t = VarEntry { envty = t }

-- Environment for tiger type bindings.
type TEnv = Symbol.SymbolTable Types.Type

-- Environment for variable and function bindings.
type VEnv = Symbol.SymbolTable EnvEntry

-- The built in types environment for Tiger.
baseTEnv :: Symbol.SymbolMap -> (TEnv, Symbol.SymbolMap)
baseTEnv sm = Symbol.fromList [("int", Types.INT), ("string", Types.STRING)] sm

-- the built in functions environment for Tiger.
baseVEnv :: Symbol.SymbolMap -> (VEnv, Symbol.SymbolMap)
baseVEnv sm = Symbol.fromList [
      ("print", FuncEntry { formals = [Types.STRING], result = Types.UNIT })
    , ("flush", FuncEntry { formals = [], result = Types.UNIT })
    , ("getchar", FuncEntry { formals = [], result = Types.STRING })
    , ("ord", FuncEntry { formals = [Types.STRING], result = Types.INT })
    , ("chr", FuncEntry { formals = [Types.INT], result = Types.STRING })
    , ("size", FuncEntry { formals = [Types.STRING], result = Types.INT })
    , ("substring", FuncEntry { formals = [Types.STRING, Types.INT, Types.INT], result = Types.STRING })
    , ("concat", FuncEntry { formals = [Types.STRING, Types.STRING], result = Types.STRING })
    , ("not", FuncEntry { formals = [Types.INT], result = Types.INT })
    , ("exit", FuncEntry { formals = [Types.INT], result = Types.UNIT })] sm