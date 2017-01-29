{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
	= HappyTerminal (Tok.TigerToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20

action_0 (28) = happyShift action_9
action_0 (49) = happyShift action_10
action_0 (56) = happyShift action_11
action_0 (61) = happyShift action_12
action_0 (62) = happyShift action_13
action_0 (63) = happyShift action_14
action_0 (4) = happyGoto action_4
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 _ = happyFail

action_1 (63) = happyShift action_3
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (51) = happyShift action_19
action_2 (54) = happyShift action_20
action_2 _ = happyReduce_1

action_3 _ = happyReduce_9

action_4 (65) = happyAccept
action_4 _ = happyFail

action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 _ = happyReduce_7

action_8 _ = happyReduce_8

action_9 _ = happyReduce_2

action_10 (62) = happyShift action_18
action_10 _ = happyFail

action_11 (28) = happyShift action_9
action_11 (49) = happyShift action_10
action_11 (56) = happyShift action_11
action_11 (57) = happyShift action_17
action_11 (61) = happyShift action_12
action_11 (62) = happyShift action_13
action_11 (63) = happyShift action_14
action_11 (4) = happyGoto action_16
action_11 (5) = happyGoto action_2
action_11 (6) = happyGoto action_5
action_11 (8) = happyGoto action_6
action_11 (9) = happyGoto action_7
action_11 (10) = happyGoto action_8
action_11 _ = happyFail

action_12 _ = happyReduce_6

action_13 _ = happyReduce_5

action_14 (56) = happyShift action_15
action_14 _ = happyReduce_9

action_15 (28) = happyShift action_9
action_15 (49) = happyShift action_10
action_15 (56) = happyShift action_11
action_15 (57) = happyShift action_26
action_15 (61) = happyShift action_12
action_15 (62) = happyShift action_13
action_15 (63) = happyShift action_14
action_15 (4) = happyGoto action_24
action_15 (5) = happyGoto action_2
action_15 (6) = happyGoto action_5
action_15 (8) = happyGoto action_6
action_15 (9) = happyGoto action_7
action_15 (10) = happyGoto action_8
action_15 (11) = happyGoto action_25
action_15 _ = happyFail

action_16 (58) = happyShift action_23
action_16 _ = happyFail

action_17 _ = happyReduce_15

action_18 _ = happyReduce_16

action_19 (63) = happyShift action_22
action_19 _ = happyFail

action_20 (28) = happyShift action_9
action_20 (49) = happyShift action_10
action_20 (56) = happyShift action_11
action_20 (61) = happyShift action_12
action_20 (62) = happyShift action_13
action_20 (63) = happyShift action_14
action_20 (4) = happyGoto action_21
action_20 (5) = happyGoto action_2
action_20 (6) = happyGoto action_5
action_20 (8) = happyGoto action_6
action_20 (9) = happyGoto action_7
action_20 (10) = happyGoto action_8
action_20 _ = happyFail

action_21 (55) = happyShift action_30
action_21 _ = happyFail

action_22 _ = happyReduce_10

action_23 (28) = happyShift action_9
action_23 (49) = happyShift action_10
action_23 (56) = happyShift action_11
action_23 (61) = happyShift action_12
action_23 (62) = happyShift action_13
action_23 (63) = happyShift action_14
action_23 (4) = happyGoto action_29
action_23 (5) = happyGoto action_2
action_23 (6) = happyGoto action_5
action_23 (8) = happyGoto action_6
action_23 (9) = happyGoto action_7
action_23 (10) = happyGoto action_8
action_23 _ = happyFail

action_24 _ = happyReduce_19

action_25 (57) = happyShift action_27
action_25 (60) = happyShift action_28
action_25 _ = happyFail

action_26 _ = happyReduce_17

action_27 _ = happyReduce_18

action_28 (28) = happyShift action_9
action_28 (49) = happyShift action_10
action_28 (56) = happyShift action_11
action_28 (61) = happyShift action_12
action_28 (62) = happyShift action_13
action_28 (63) = happyShift action_14
action_28 (4) = happyGoto action_32
action_28 (5) = happyGoto action_2
action_28 (6) = happyGoto action_5
action_28 (8) = happyGoto action_6
action_28 (9) = happyGoto action_7
action_28 (10) = happyGoto action_8
action_28 _ = happyFail

action_29 (7) = happyGoto action_31
action_29 _ = happyReduce_13

action_30 _ = happyReduce_11

action_31 (57) = happyShift action_33
action_31 (58) = happyShift action_34
action_31 _ = happyFail

action_32 _ = happyReduce_20

action_33 _ = happyReduce_12

action_34 (28) = happyShift action_9
action_34 (49) = happyShift action_10
action_34 (56) = happyShift action_11
action_34 (61) = happyShift action_12
action_34 (62) = happyShift action_13
action_34 (63) = happyShift action_14
action_34 (4) = happyGoto action_35
action_34 (5) = happyGoto action_2
action_34 (6) = happyGoto action_5
action_34 (8) = happyGoto action_6
action_34 (9) = happyGoto action_7
action_34 (10) = happyGoto action_8
action_34 _ = happyFail

action_35 _ = happyReduce_14

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.LVal happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (AST.Nil
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.Seq happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyTerminal (IntToken happy_var_1))
	 =  HappyAbsSyn4
		 (AST.IntLit happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyTerminal (StringToken happy_var_1))
	 =  HappyAbsSyn4
		 (AST.StringLit happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.Var happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 4 5 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 6 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_2 : happy_var_4 : (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_0  7 happyReduction_13
happyReduction_13  =  HappyAbsSyn7
		 ([]
	)

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  8 happyReduction_15
happyReduction_15 _
	_
	 =  HappyAbsSyn8
		 (AST.NoVal
	)

happyReduce_16 = happySpecReduce_2  9 happyReduction_16
happyReduction_16 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn9
		 (AST.Neg happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn10
		 (AST.FunCall happy_var_1 []
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 10 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  11 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  12 happyReduction_21
happyReduction_21  =  HappyAbsSyn12
		 ([]
	)

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (reverse happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  13 happyReduction_23
happyReduction_23 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_2 : happy_var_1
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  14 happyReduction_25
happyReduction_25 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.TDec happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  14 happyReduction_26
happyReduction_26 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.VDec happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.FDec happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happyReduce 7 15 happyReduction_28
happyReduction_28 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 9 15 happyReduction_29
happyReduction_29 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 16 happyReduction_30
happyReduction_30 ((HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_1  17 happyReduction_31
happyReduction_31 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn17
		 (AST.Type happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  17 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (AST.Record happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  17 happyReduction_33
happyReduction_33 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn17
		 (AST.Array happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_0  18 happyReduction_34
happyReduction_34  =  HappyAbsSyn18
		 ([]
	)

happyReduce_35 = happySpecReduce_1  18 happyReduction_35
happyReduction_35 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (reverse happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  19 happyReduction_36
happyReduction_36 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn19
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 5 19 happyReduction_37
happyReduction_37 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 4 20 happyReduction_38
happyReduction_38 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 20 happyReduction_39
happyReduction_39 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 65 65 tk (HappyState action) sts stk;
	TypeToken -> cont 21;
	VarToken -> cont 22;
	FunctionToken -> cont 23;
	BreakToken -> cont 24;
	OfToken -> cont 25;
	EndToken -> cont 26;
	InToken -> cont 27;
	NilToken -> cont 28;
	LetToken -> cont 29;
	DoToken -> cont 30;
	ToToken -> cont 31;
	ForToken -> cont 32;
	WhileToken -> cont 33;
	ElseToken -> cont 34;
	ThenToken -> cont 35;
	IfToken -> cont 36;
	ArrayToken -> cont 37;
	AssignToken -> cont 38;
	OrToken -> cont 39;
	AndToken -> cont 40;
	GeToken -> cont 41;
	GtToken -> cont 42;
	LeToken -> cont 43;
	LtToken -> cont 44;
	NeqToken -> cont 45;
	EqToken -> cont 46;
	DivideToken -> cont 47;
	TimesToken -> cont 48;
	MinusToken -> cont 49;
	PlusToken -> cont 50;
	DotToken -> cont 51;
	LbraceToken -> cont 52;
	RbraceToken -> cont 53;
	LbrackToken -> cont 54;
	RbrackToken -> cont 55;
	LparenToken -> cont 56;
	RparenToken -> cont 57;
	SemicolonToken -> cont 58;
	ColonToken -> cont 59;
	CommaToken -> cont 60;
	StringToken happy_dollar_dollar -> cont 61;
	IntToken happy_dollar_dollar -> cont 62;
	IdToken happy_dollar_dollar -> cont 63;
	EofToken -> cont 64;
	_ -> happyError' tk
	})

happyError_ 65 tk = happyError' tk
happyError_ _ tk = happyError' tk

happyThen :: () => Lex.P a -> (a -> Lex.P b) -> Lex.P b
happyThen = (>>=)
happyReturn :: () => a -> Lex.P a
happyReturn = (return)
happyThen1 = happyThen
happyReturn1 :: () => a -> Lex.P a
happyReturn1 = happyReturn
happyError' :: () => (Tok.TigerToken) -> Lex.P a
happyError' tk = (\token -> happyError) tk

parser = happySomeParser where
  happySomeParser = happyThen (happyParse action_0) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- Needs to be defined for Happy to compile
happyError = error "Parser error!"

--runParser :: String -> Either String Dec
runParser input = runAlex input parser

main = do
  s <- getContents
  let ast = case runParser s of
              Left msg -> msg
              Right ast' -> show ast'
  print ast
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
