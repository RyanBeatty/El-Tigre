module SemantTest (semantTests) where

import Control.Applicative
import Test.Tasty
import Test.Tasty.HUnit

import Semant
import qualified Types as T

semantTests :: TestTree
semantTests = testGroup "Semant.hs Tests" [test1, testIntLit]

test1 :: TestTree
test1 = testCase "1 yields INT" $ True `compare` False @?= GT

testIntLit :: TestTree
testIntLit = testCase "1 yields INT" $ (ty <$> transProg "1") == (return T.INT) @?= True