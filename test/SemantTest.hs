module SemantTest (semantTests) where

import Test.Tasty
import Test.Tasty.HUnit

import Semant (transProg)

semantTests :: TestTree
semantTests = testGroup "Semant.hs Tests" [test1]

test1 = testCase "should fail" $ True `compare` False @?= EQ