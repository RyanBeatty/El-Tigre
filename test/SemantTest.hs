module SemantTest (semantTests) where

import Control.Applicative
import Test.Tasty
import Test.Tasty.HUnit

import Semant
import Symbol (makeSymbol, Symbol)
import qualified Types as T

semantTests :: TestTree
semantTests = testGroup "Semant.hs Tests" [
      testIntLit
    , testStringLit
    , testNeg
    , testArithOp
    , testCompOp
    , testLogOp
    , testLet
    , testDecs
    , testSeq
    , testIf
    , testWhile
    , testArrExp
    , testRecExp]

getType :: String -> Either String T.Type
getType s = ty <$> transProg s

assertEq :: (Eq a, Show a) => a -> a -> Assertion
assertEq x y = x @?= y

yieldsTypeError :: String -> T.TypeError -> Assertion
yieldsTypeError ex err = assertEq (getType ex) (Left $ show err)

yieldsType :: String -> T.Type -> Assertion
yieldsType s t = assertEq (getType s) (return t)

yieldsInt :: String -> Assertion
yieldsInt s = yieldsType s T.INT

yieldsString :: String -> Assertion
yieldsString s = yieldsType s T.STRING

yieldsArray :: String -> T.Type -> T.Unique -> Assertion
yieldsArray s t u = yieldsType s (T.ARRAY t u)

yieldsRecord :: String -> [(Symbol.Symbol, T.Type)] -> T.Unique -> Assertion
yieldsRecord s f u = yieldsType s (T.RECORD f u)

yieldsUnit :: String -> Assertion
yieldsUnit s = yieldsType s T.UNIT

testIntLit :: TestTree
testIntLit = testCase "IntLit" $ yieldsInt "1"

testStringLit :: TestTree
testStringLit = testCase "StringLit" $ yieldsString "\"hello\""

testNeg :: TestTree
testNeg = testCase "Neg" $ yieldsInt "-1"

testArithOp :: TestTree
testArithOp = testGroup "ArithOp Tests"
  [ testCase "ArithOp: Plus" $ yieldsInt "1 + 1"
  , testCase "ArithOp: Minus" $ yieldsInt "1 - 1"
  , testCase "ArithOp: Mult" $ yieldsInt "1 + 1"
  , testCase "ArithOp: Mult" $ yieldsInt "1 + 1"
  , testCase "ArithOp: Div" $ yieldsInt "1 / 1"
  , testCase "ArithOp: Mismatch" $
        yieldsTypeError "1 + \"hello\"" (T.makeTypeMismatch T.INT T.STRING)
  ]

testCompOp :: TestTree
testCompOp = testGroup "CompOp Tests"
  [ testCase "CompOp: GT" $ yieldsInt "1 > 1"
  , testCase "CompOp: LT" $ yieldsInt "1 < 1"
  , testCase "CompOp: GE" $ yieldsInt "1 >= 1"
  , testCase "CompOp: LE" $ yieldsInt "1 <= 1"
  , testCase "CompOp: EQ" $ yieldsInt "1 = 1"
  , testCase "CompOp: NEQ" $ yieldsInt "1 <> 1"
  , testCase "CompOp: Mismatch" $
        yieldsTypeError "1 > \"hello\"" (T.makeTypeMismatch T.INT T.STRING)
  ]

testLogOp :: TestTree
testLogOp = testGroup "LogOp Tests"
  [ testCase "LogOp: And" $ yieldsInt "1 & 1"
  , testCase "LogOp: Or" $ yieldsInt "1 | 1"
  ]

testLet :: TestTree
testLet = testGroup "Let Tests"
  [ testCase "Let: Empty Decs" $ yieldsInt "let in 1 end"
  , testCase "Let: Many Exps" $ yieldsString "let in 1; \"hello\" end"
  , testCase "Let: UnTyped VarDec" $ yieldsInt "let var foo := 1 in foo end"
  , testCase "Let: Typed VarDec" $ yieldsInt "let var foo : int := 1 in foo end"
  , testCase "Let: Typed VarDec Mismatch" $
        yieldsTypeError "let var foo : string := 1 in foo end" (T.makeUnexpectedType T.STRING T.INT)
  , testCase "Let: Undeclared Typed VarDec" $
        yieldsTypeError "let var foo : bar := 1 in foo end" (T.makeUndeclaredType (makeSymbol 0 "bar"))
  , testCase "Let: Empty Decs And Body" $ yieldsUnit "let in end"
  ]

testDecs :: TestTree
testDecs = testGroup "Decs Tests"
  [ testCase "Decs: Type Dec" $ yieldsInt "let type foo = int var i : foo := 1 in i end"
  , testCase "Decs: Type Dec Undeclared Type" $ 
      yieldsTypeError "let type foo = bar in 1 end" (T.makeUndeclaredType (makeSymbol 0 "bar"))
  , testCase "Decs: Array Dec" $
      yieldsArray "let type foo = array of int var i : foo := int [1] of 1 in i end" T.INT 0
  , testCase "Decs: Array of Arrays" $
      yieldsArray "let type foo = array of int in foo [1] of (int [1] of 1) end" (T.ARRAY T.INT 0) 2
  , testCase "Record: Doesn't Fail" $ 
      yieldsInt "let type foo = { x : int, y : string } in 1 end" 
  ]

testSeq :: TestTree
testSeq = testGroup "Seq Tests"
  [ testCase "Seq: Basic" $ yieldsInt "(\"hello\"; 1)"
  , testCase "Seq: Unit Result" $ yieldsUnit "(1; ())"
  , testCase "Seq: Early Type Error" $
      yieldsTypeError "(1; foo; 3)" (T.makeUndeclaredVar (makeSymbol 0 "foo"))
  ]

testIf :: TestTree
testIf = testGroup "If Tests"
  [ testCase "If: If-Then" $ yieldsString "if 1 then \"hell\""
  , testCase "If: If-Then-Else" $ yieldsInt "if 1 then 2 else 3"
  , testCase "If: If-Then Type Error" $
      yieldsTypeError "if \"hello\" then 1" (T.makeUnexpectedType T.INT T.STRING)
  , testCase "If: If-Then-Else Type Error" $
      yieldsTypeError "if \"hello\" then 1 else 1" (T.makeUnexpectedType T.INT T.STRING)
  , testCase "If: If-Then-Else Type Mismatch" $
      yieldsTypeError "if 1 then 2 else ()" (T.makeTypeMismatch T.INT T.UNIT)
  ]

testWhile :: TestTree
testWhile = testGroup "While Tests"
  [ testCase "While" $ yieldsUnit "while 1 do (1; ())"
  , testCase "While: Unexpected Condition Type" $
      yieldsTypeError "while \"hello\" do ()" (T.makeUnexpectedType T.INT T.STRING)
  , testCase "While: Unexpected Body Type" $
      yieldsTypeError "while 1 do 1" (T.makeUnexpectedType T.UNIT T.INT)
  ]

testArrExp :: TestTree
testArrExp = testGroup "ArrExp Tests"
  [ testCase "ArrExp" $ yieldsArray "int [3] of 5" T.INT 0
  , testCase "ArrExp: Undeclared Array Type" $ 
      yieldsTypeError "foo [3] of 3" (T.makeUndeclaredType (makeSymbol 0 "foo"))
  , testCase "ArrExp: Non Int Length" $
      yieldsTypeError "int [\"hello\"] of 3" (T.makeUnexpectedType T.INT T.STRING)
  , testCase "ArrExp: Type Mismatch" $
      yieldsTypeError "int [3] of \"hello\"" (T.makeUnexpectedType T.INT T.STRING)
  ]

testRecExp :: TestTree
testRecExp = testGroup "RecExp Tests"
  [ testCase "RecExp" $
      yieldsRecord "let type foo = { x : int, y : string } in foo { x = 1, y = \"hello\" } end" [(makeSymbol 1 "x", T.INT), (makeSymbol 3 "y", T.STRING)] 1
  ]
