import Data.List (find)
import Control.Applicative 

type Id = String

data BinOp = Plus | Minus | Times | Div

data Stm = CompoundStm Stm Stm
         | AssignStm Id Exp
         | PrintStm [Exp]

data Exp = IdExp Id
         | NumExp Int
         | OpExp Exp BinOp Exp
         | EseqExp Stm Exp

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


type Table = [(Id, Int)]

update :: Table -> Id -> Int -> Table
update table name value = (name, value) : table

lookup' :: Table -> Id -> Maybe Int
lookup' table name = snd <$> find (\(a, b) -> a == name) table 

interpStm :: Stm -> Table -> IO (Table)
interpStm (PrintStm es) = return undefined 

interpExp :: Exp -> Table -> IO (Maybe Int, Table)
interpExp (IdExp name) t     = return (lookup' t name, t)
interpExp (NumExp num) t     = return (Just num, t)
interpExp (OpExp e1 op e2) t = do (r1, t')  <- interpExp e1 t
                                  (r2, t'') <- interpExp e2 t'
                                  return (binOp op <$> r1 <*> r2, t'')
interpExp (EseqExp s e) t    = do t' <- interpStm s t
                                  return (interpExp e t')

binOp :: BinOp -> (Int -> Int -> Int)
binOp Plus  = (+)
binOp Minus = (-)
binOp Times = (*)
binOp Div   = (div)








