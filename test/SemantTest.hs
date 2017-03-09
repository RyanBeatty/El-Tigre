module SemantTest (semantTests) where

import Control.Applicative
import Test.Tasty
import Test.Tasty.HUnit

import Semant
import qualified Types as T

semantTests :: TestTree
semantTests = testGroup "Semant.hs Tests" [
      testIntLit
    , testStringLit
    , testNeg
    , testArithOp]

getType :: String -> Either String T.Type
getType s = ty <$> transProg s

assertTrue :: (Eq a) => a -> a -> Assertion
assertTrue x y = x == y @?= True

yieldsType :: String -> T.Type -> Assertion
yieldsType s t = assertTrue (getType s) (return t)

yieldsInt :: String -> Assertion
yieldsInt s = yieldsType s T.INT

yieldsString :: String -> Assertion
yieldsString s = yieldsType s T.STRING

testIntLit :: TestTree
testIntLit = testCase "IntLit: 1 yields INT" $ yieldsInt "1"

testStringLit :: TestTree
testStringLit = testCase "StringLit: \"hello\" yields STRING" $ yieldsString "\"hello\""

testNeg :: TestTree
testNeg = testCase "Neg: -1 yields INT" $ yieldsInt "-1"

testArithOp :: TestTree
testArithOp = testCase "ArithOp: 1 + 1 yields INT" $ yieldsInt "1 + 1"
