module Main (main) where

import Test.Tasty

import SemantTest (semantTests)

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "MCI Tests" [semantTests]
