module Env (
    TEnv,
    VEnv,
    EnvEntry,
    Env.envty,
    Env.buildBaseEnvs,
    Env.makeVarEntry
) where

import Symbol (fromList, SymbolTable, SymbolMap)
import qualified Types as T

data EnvEntry = VarEntry  { envty :: T.Type }
              | FuncEntry { formals :: [T.Type], result :: T.Type }
              deriving (Show)

makeVarEntry :: T.Type -> EnvEntry
makeVarEntry t = VarEntry { envty = t }

-- Environment for tiger type bindings.
type TEnv = Symbol.SymbolTable T.Type

-- Environment for variable and function bindings.
type VEnv = Symbol.SymbolTable EnvEntry

-- The built in types environment for Tiger.
baseTEnv :: Symbol.SymbolMap -> (TEnv, Symbol.SymbolMap)
baseTEnv sm = Symbol.fromList [("int", T.INT), ("string", T.STRING)] sm

-- the built in functions environment for Tiger.
baseVEnv :: Symbol.SymbolMap -> (VEnv, Symbol.SymbolMap)
baseVEnv sm = Symbol.fromList [
      ("print", FuncEntry { formals = [T.STRING], result = T.UNIT })
    , ("flush", FuncEntry { formals = [], result = T.UNIT })
    , ("getchar", FuncEntry { formals = [], result = T.STRING })
    , ("ord", FuncEntry { formals = [T.STRING], result = T.INT })
    , ("chr", FuncEntry { formals = [T.INT], result = T.STRING })
    , ("size", FuncEntry { formals = [T.STRING], result = T.INT })
    , ("substring", FuncEntry { formals = [T.STRING, T.INT, T.INT], result = T.STRING })
    , ("concat", FuncEntry { formals = [T.STRING, T.STRING], result = T.STRING })
    , ("not", FuncEntry { formals = [T.INT], result = T.INT })
    , ("exit", FuncEntry { formals = [T.INT], result = T.UNIT })] sm

buildBaseEnvs :: Symbol.SymbolMap -> (Env.VEnv, Env.TEnv)
buildBaseEnvs sm = let (venv, sm')  = baseVEnv sm
                       (tenv, sm'') = baseTEnv sm'
                   in (venv, tenv)