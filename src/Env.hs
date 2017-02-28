module Env (
    TEnv,
    VEnv,
    Env.baseTEnv,
    Env.baseVEnv
) where

import Symbol (fromList, SymTable)
import Types

data EnvEntry = VarEntry  { ty :: Types.Type }
              | FuncEntry { formals :: [Types.Type], result :: Types.Type }
              deriving (Show)

-- Environment for tiger type bindings.
type TEnv = Symbol.SymTable Types.Type

-- Environment for variable and function bindings.
type VEnv = Symbol.SymTable EnvEntry

-- The built in types environment for Tiger.
baseTEnv :: TEnv
baseTEnv = Symbol.fromList [("int", Types.INT), ("string", Types.STRING)]

-- the built in functions environment for Tiger.
baseVEnv :: VEnv
baseVEnv = Symbol.fromList [
      ("print", FuncEntry { formals = [Types.STRING], result = Types.UNIT })
    , ("flush", FuncEntry { formals = [], result = Types.UNIT })
    , ("getchar", FuncEntry { formals = [], result = Types.STRING })
    , ("ord", FuncEntry { formals = [Types.STRING], result = Types.INT })
    , ("chr", FuncEntry { formals = [Types.INT], result = Types.STRING })
    , ("size", FuncEntry { formals = [Types.STRING], result = Types.INT })
    , ("substring", FuncEntry { formals = [Types.STRING, Types.INT, Types.INT], result = Types.STRING })
    , ("concat", FuncEntry { formals = [Types.STRING, Types.STRING], result = Types.STRING })
    , ("not", FuncEntry { formals = [Types.INT], result = Types.INT })
    , ("exit", FuncEntry { formals = [Types.INT], result = Types.UNIT })]