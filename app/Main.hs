module Main where

import Semant (transProg)

main :: IO ()
main = do
    contents <- getContents
    print $ transProg contents

