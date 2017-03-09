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
    , testLogOp
    , testLet]

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
testIntLit = testCase "IntLit" $ yieldsInt "1"

testStringLit :: TestTree
testStringLit = testCase "StringLit" $ yieldsString "\"hello\""

testNeg :: TestTree
testNeg = testCase "Neg" $ yieldsInt "-1"

testArithOp :: TestTree
testArithOp = testGroup "ArithOp Tests"
  [ testCase "ArithOp Plus" $ yieldsInt "1 + 1"
  , testCase "ArithOp Minus" $ yieldsInt "1 - 1"
  , testCase "ArithOp Mult" $ yieldsInt "1 + 1"
  , testCase "ArithOp Mult" $ yieldsInt "1 + 1"
  , testCase "ArithOp Div" $ yieldsInt "1 / 1"
  , testCase "ArithOp Mismatch" $
        yieldsTypeError "1 + \"hello\"" "Arithmetic operators need two ints. Got <INT> and <STRING>"
  ]

testCompOp :: TestTree
testCompOp = testGroup "CompOp Tests"
  [ testCase "CompOp GT" $ yieldsInt "1 > 1"
  , testCase "CompOp LT" $ yieldsInt "1 < 1"
  , testCase "CompOp GE" $ yieldsInt "1 >= 1"
  , testCase "CompOp LE" $ yieldsInt "1 <= 1"
  , testCase "CompOp EQ" $ yieldsInt "1 = 1"
  , testCase "CompOp NEQ" $ yieldsInt "1 <> 1"
  , testCase "CompOp Mismatch" $
        yieldsTypeError "1 > \"hello\"" "Comparison operators require two ints. Got <INT> and <STRING>"

  ]

testLogOp :: TestTree
testLogOp = testGroup "LogOp Tests"
  [ testCase "LogOp And" $ yieldsInt "1 & 1"
  , testCase "LogOp Or" $ yieldsInt "1 | 1"
  ]

testLet :: TestTree
testLet = testGroup "Let Tests"
  [ testCase "Let Empty Decs" $ yieldsInt "let in 1 end"
  , testCase "Let Many Exps" $ yieldsString "let in 1; \"hello\" end"
  , testCase "Let UnTyped VarDec" $ yieldsInt "let var foo := 1 in foo end"
  , testCase "Let Typed VarDec" $ yieldsInt "let var foo : int := 1 in foo end"
  , testCase "Let Typed VarDec Mismatch" $
        yieldsTypeError "let var foo : string := 1 in foo end" "Variable Type Mismatch. Declared <STRING> Got <INT>"
  , testCase "Let Undeclared Typed VarDec" $
        yieldsTypeError "let var foo : bar := 1 in foo end" "Undeclared Type <bar>"
  ]
