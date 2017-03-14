module Env (
    TEnv,
    VEnv,
    EnvEntry,
    Env.varEntryType,
    Env.buildBaseEnvs,
    Env.makeVarEntry,
    Env.makeFuncEntry,
    addNewVarEntry,
    addNewFuncEntry,
    addNewTypeEntry,
    lookupVarEntry,
    lookupTypeEntry
) where

import qualified Symbol as Sym (SymbolTable, SymbolMap, Symbol, fromList, enter, look)
import qualified Types as T

data EnvEntry = VarEntry  { varEntryType :: T.Type }
              | FuncEntry { formals :: [T.Type], result :: T.Type }
              deriving (Show)

makeVarEntry :: T.Type -> EnvEntry
makeVarEntry t = VarEntry { varEntryType = t }

makeFuncEntry :: [T.Type] -> T.Type -> EnvEntry
makeFuncEntry ts r = FuncEntry { formals = ts, result = r }

addNewVarEntry :: Sym.Symbol -> T.Type -> VEnv -> VEnv
addNewVarEntry sym t venv = Sym.enter sym (makeVarEntry t) venv

addNewFuncEntry :: Sym.Symbol -> [T.Type] -> T.Type -> VEnv -> VEnv
addNewFuncEntry sym ts t venv = Sym.enter sym (makeFuncEntry ts t) venv

addNewTypeEntry :: Sym.Symbol -> T.Type -> TEnv -> TEnv
addNewTypeEntry = Sym.enter

lookupVarEntry :: Sym.Symbol -> VEnv -> Maybe EnvEntry
lookupVarEntry = Sym.look

lookupTypeEntry :: Sym.Symbol -> TEnv -> Maybe T.Type
lookupTypeEntry = Sym.look

-- Environment for tiger type bindings.
type TEnv = Sym.SymbolTable T.Type

-- Environment for variable and function bindings.
type VEnv = Sym.SymbolTable EnvEntry

-- The built in types environment for Tiger.
baseTEnv :: Sym.SymbolMap -> (TEnv, Sym.SymbolMap)
baseTEnv sm = Sym.fromList [("int", T.INT), ("string", T.STRING)] sm

-- the built in functions environment for Tiger.
baseVEnv :: Sym.SymbolMap -> (VEnv, Sym.SymbolMap)
baseVEnv sm = Sym.fromList [
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

buildBaseEnvs :: Sym.SymbolMap -> (Env.VEnv, Env.TEnv)
buildBaseEnvs sm = let (venv, sm')  = baseVEnv sm
                       (tenv, sm'') = baseTEnv sm'
                   in (venv, tenv)