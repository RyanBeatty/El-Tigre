module Main where

import Semant (transProg)

main :: IO ()
main = getContents >>= transProg
