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
    , testArithOpPlus
    , testArithOpMinus
    , testArithOpMult
    , testArithOpDiv
    , testArithOpMismatch
    , testCompOpGT
    , testCompOpLT
    , testCompOpGE
    , testCompOpLE
    , testCompOpEQ
    , testCompOpNEQ]

getType :: String -> Either String T.Type
getType s = ty <$> transProg s

assertEq :: (Eq a, Show a) => a -> a -> Assertion
assertEq x y = x @?= y

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

testArithOpPlus :: TestTree
testArithOpPlus = testCase "ArithOp Plus: 1 + 1 yields INT" $ yieldsInt "1 + 1"

testArithOpMinus :: TestTree
testArithOpMinus = testCase "ArithOp Minus: 1 - 1 yields INT" $ yieldsInt "1 - 1"

testArithOpMult :: TestTree
testArithOpMult = testCase "ArithOp Mult: 1 * 1 yields INT" $ yieldsInt "1 + 1"

testArithOpDiv :: TestTree
testArithOpDiv = testCase "ArithOp Div: 1 / 1 yields INT" $ yieldsInt "1 / 1"

testArithOpMismatch :: TestTree
testArithOpMismatch = testCase "ArithOp Mismatch: 1 + \"hello\" yields type error" $
    (getType "1 + \"hello\"") == Left "Arithmetic operators need two ints. Got <int> and <string>" @?= False

testCompOpGT :: TestTree
testCompOpGT = testCase "CompOp GT: 1 > 1 yields INT" $ yieldsInt "1 > 1"

testCompOpLT :: TestTree
testCompOpLT = testCase "CompOp LT: 1 < 1 yields INT" $ yieldsInt "1 < 1"

testCompOpGE :: TestTree
testCompOpGE = testCase "CompOp GE: 1 >= 1 yields INT" $ yieldsInt "1 >= 1"

testCompOpLE :: TestTree
testCompOpLE = testCase "CompOp LE: 1 <= 1 yields INT" $ yieldsInt "1 <= 1"

testCompOpEQ :: TestTree
testCompOpEQ = testCase "CompOp EQ: 1 = 1 yields INT" $ yieldsInt "1 = 1"

testCompOpNEQ :: TestTree
testCompOpNEQ = testCase "CompOp NEQ: 1 <> 1 yields INT" $ yieldsInt "1 <> 1"
