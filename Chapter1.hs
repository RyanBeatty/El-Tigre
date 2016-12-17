-- Solution for the programming exercise at the end of chapter 1.

import Data.List (find)
import Control.Applicative 

-----------------------------------------------------
-- The following types implement the grammar for the 
-- straight line language described in Ch 1.
type Id = String

data BinOp = Plus | Minus | Times | Div

data Stm = CompoundStm Stm Stm
         | AssignStm Id Exp
         | PrintStm [Exp]

data Exp = IdExp Id
         | NumExp Int
         | OpExp Exp BinOp Exp
         | EseqExp Stm Exp
-----------------------------------------------------

-- Example prog to use for testing
prog = CompoundStm (AssignStm "a" (OpExp (NumExp 5) Plus (NumExp 3))) (CompoundStm (AssignStm "b" (EseqExp (PrintStm [IdExp "a", OpExp (IdExp "a") Minus (NumExp 1)]) (OpExp (NumExp 10) Times (IdExp "a")))) (PrintStm [IdExp "b"]))

-- Returns the maximum number of args of any PrintStm of any Stm.
maxArgsStm :: Stm -> Int
maxArgsStm (CompoundStm s1 s2) = max (maxArgsStm s1) (maxArgsStm s2)
maxArgsStm (PrintStm xs)       = max (length xs) (maximum $  map maxArgsExp xs)
maxArgsStm (AssignStm _ e)     = maxArgsExp e

-- Returns the maximum number of args of any PrintStm within a Exp.
maxArgsExp :: Exp -> Int
maxArgsExp (EseqExp s e)   = max (maxArgsStm s) (maxArgsExp e)
maxArgsExp (OpExp e1 _ e2) = max (maxArgsExp e1) (maxArgsExp e2)
maxArgsExp _               = 0

-- Symbol table. Probably could've used Map in the Prelude
type Table = [(Id, Int)]

-- Update the Table
update :: Table -> Id -> Int -> Table
update table name value = (name, value) : table

-- Lookup Key in Table
lookup' :: Table -> Id -> Maybe Int
lookup' table name = snd <$> find (\(a, b) -> a == name) table 

-- Interpret a Statement.
interpStm :: Stm -> Table -> IO (Table)
interpStm (AssignStm name exp) t =
  do (val, t') <- interpExp exp t
     case val of
       Nothing -> return undefined 
       Just r  -> return $ update t' name r
interpStm (CompoundStm s1 s2) t = interpStm s1 t >>= interpStm s2
interpStm (PrintStm es) t = printStm es t

-- Helper to Interpret a PrintStm. Probably could
-- rewrite this to be cleaner.
printStm :: [Exp] -> Table -> IO (Table)
printStm [] t = putStr "\n" >> return t
printStm (e:es) t =
  do (v, t') <- interpExp e t
     putStr $ show v ++ " "
     printStm es t'

-- Interpret an Exp.
interpExp :: Exp -> Table -> IO (Maybe Int, Table)
interpExp (IdExp name) t     = return (lookup' t name, t)
interpExp (NumExp num) t     = return (Just num, t)
interpExp (OpExp e1 op e2) t = do (r1, t')  <- interpExp e1 t
                                  (r2, t'') <- interpExp e2 t'
                                  return (binOp op <$> r1 <*> r2, t'')
interpExp (EseqExp s e) t    = interpStm s t >>= interpExp e

-- Map a BinOp to the actual operation function.
binOp :: BinOp -> (Int -> Int -> Int)
binOp Plus  = (+)
binOp Minus = (-)
binOp Times = (*)
binOp Div   = (div)

-- Interpret a Program from the Straight Line Language.
interp :: Stm -> IO ()
interp stm =
  do table <- interpStm stm []
     return () 






