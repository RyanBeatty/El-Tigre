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
    , testArithOp
    , testCompOp
    , testLogOpAnd
    , testLogOpOr
    , testLetNoDecs]

getType :: String -> Either String T.Type
getType s = ty <$> transProg s

assertEq :: (Eq a, Show a) => a -> a -> Assertion
assertEq x y = x @?= y

yieldsTypeError :: String -> String -> Assertion
yieldsTypeError ex err = assertEq (getType ex) (Left err)

yieldsType :: String -> T.Type -> Assertion
yieldsType s t = assertEq (getType s) (return t)

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
testArithOp = testGroup "ArithOp Tests"
  [ testCase "ArithOp Plus: 1 + 1 yields INT" $ yieldsInt "1 + 1"
  , testCase "ArithOp Minus: 1 - 1 yields INT" $ yieldsInt "1 - 1"
  , testCase "ArithOp Mult: 1 * 1 yields INT" $ yieldsInt "1 + 1"
  , testCase "ArithOp Mult: 1 * 1 yields INT" $ yieldsInt "1 + 1"
  , testCase "ArithOp Div: 1 / 1 yields INT" $ yieldsInt "1 / 1"
  , testCase "ArithOp Mismatch: 1 + \"hello\" yields type error" $
        yieldsTypeError "1 + \"hello\"" "Arithmetic operators need two ints. Got <INT> and <STRING>"
  ]

testCompOp :: TestTree
testCompOp = testGroup "CompOp Tests"
  [ testCase "CompOp GT: 1 > 1 yields INT" $ yieldsInt "1 > 1"
  , testCase "CompOp LT: 1 < 1 yields INT" $ yieldsInt "1 < 1"
  , testCase "CompOp GE: 1 >= 1 yields INT" $ yieldsInt "1 >= 1"
  , testCase "CompOp LE: 1 <= 1 yields INT" $ yieldsInt "1 <= 1"
  , testCase "CompOp EQ: 1 = 1 yields INT" $ yieldsInt "1 = 1"
  , testCase "CompOp NEQ: 1 <> 1 yields INT" $ yieldsInt "1 <> 1"
  --, testCase "CompOp Mismatch: 1 > \"hello\" yields type error" $

  ]

testLogOpAnd :: TestTree
testLogOpAnd = testCase "LogOp And: 1 & 1 yields INT" $ yieldsInt "1 & 1"

testLogOpOr :: TestTree
testLogOpOr = testCase "LogOp Or: 1 | 1 yields INT" $ yieldsInt "1 | 1"

testLetNoDecs :: TestTree
testLetNoDecs = testCase "Let: let in 1 end yields INT" $ yieldsInt "let in 1 end"
