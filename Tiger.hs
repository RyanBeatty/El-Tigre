{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18
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

action_0 (26) = happyShift action_8
action_0 (47) = happyShift action_9
action_0 (54) = happyShift action_10
action_0 (59) = happyShift action_11
action_0 (60) = happyShift action_12
action_0 (61) = happyShift action_3
action_0 (4) = happyGoto action_4
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 _ = happyFail

action_1 (61) = happyShift action_3
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (49) = happyShift action_16
action_2 (52) = happyShift action_17
action_2 _ = happyReduce_1

action_3 _ = happyReduce_8

action_4 (63) = happyAccept
action_4 _ = happyFail

action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 _ = happyReduce_7

action_8 _ = happyReduce_2

action_9 (60) = happyShift action_15
action_9 _ = happyFail

action_10 (26) = happyShift action_8
action_10 (47) = happyShift action_9
action_10 (54) = happyShift action_10
action_10 (55) = happyShift action_14
action_10 (59) = happyShift action_11
action_10 (60) = happyShift action_12
action_10 (61) = happyShift action_3
action_10 (4) = happyGoto action_13
action_10 (5) = happyGoto action_2
action_10 (6) = happyGoto action_5
action_10 (8) = happyGoto action_6
action_10 (9) = happyGoto action_7
action_10 _ = happyFail

action_11 _ = happyReduce_6

action_12 _ = happyReduce_5

action_13 (56) = happyShift action_20
action_13 _ = happyFail

action_14 _ = happyReduce_14

action_15 _ = happyReduce_15

action_16 (61) = happyShift action_19
action_16 _ = happyFail

action_17 (26) = happyShift action_8
action_17 (47) = happyShift action_9
action_17 (54) = happyShift action_10
action_17 (59) = happyShift action_11
action_17 (60) = happyShift action_12
action_17 (61) = happyShift action_3
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_2
action_17 (6) = happyGoto action_5
action_17 (8) = happyGoto action_6
action_17 (9) = happyGoto action_7
action_17 _ = happyFail

action_18 (53) = happyShift action_22
action_18 _ = happyFail

action_19 _ = happyReduce_9

action_20 (26) = happyShift action_8
action_20 (47) = happyShift action_9
action_20 (54) = happyShift action_10
action_20 (59) = happyShift action_11
action_20 (60) = happyShift action_12
action_20 (61) = happyShift action_3
action_20 (4) = happyGoto action_21
action_20 (5) = happyGoto action_2
action_20 (6) = happyGoto action_5
action_20 (8) = happyGoto action_6
action_20 (9) = happyGoto action_7
action_20 _ = happyFail

action_21 (7) = happyGoto action_23
action_21 _ = happyReduce_12

action_22 _ = happyReduce_10

action_23 (55) = happyShift action_24
action_23 (56) = happyShift action_25
action_23 _ = happyFail

action_24 _ = happyReduce_11

action_25 (26) = happyShift action_8
action_25 (47) = happyShift action_9
action_25 (54) = happyShift action_10
action_25 (59) = happyShift action_11
action_25 (60) = happyShift action_12
action_25 (61) = happyShift action_3
action_25 (4) = happyGoto action_26
action_25 (5) = happyGoto action_2
action_25 (6) = happyGoto action_5
action_25 (8) = happyGoto action_6
action_25 (9) = happyGoto action_7
action_25 _ = happyFail

action_26 _ = happyReduce_13

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

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.Var happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 5 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 6 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_2 : happy_var_4 : (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_0  7 happyReduction_12
happyReduction_12  =  HappyAbsSyn7
		 ([]
	)

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  8 happyReduction_14
happyReduction_14 _
	_
	 =  HappyAbsSyn8
		 (AST.NoVal
	)

happyReduce_15 = happySpecReduce_2  9 happyReduction_15
happyReduction_15 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn9
		 (AST.Neg happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_0  10 happyReduction_16
happyReduction_16  =  HappyAbsSyn10
		 ([]
	)

happyReduce_17 = happySpecReduce_1  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (reverse happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_2 : happy_var_1
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn12
		 (AST.TDec happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn12
		 (AST.VDec happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (AST.FDec happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happyReduce 7 13 happyReduction_23
happyReduction_23 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 9 13 happyReduction_24
happyReduction_24 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 14 happyReduction_25
happyReduction_25 ((HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn15
		 (AST.Type happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (AST.Record happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  15 happyReduction_28
happyReduction_28 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn15
		 (AST.Array happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_0  16 happyReduction_29
happyReduction_29  =  HappyAbsSyn16
		 ([]
	)

happyReduce_30 = happySpecReduce_1  16 happyReduction_30
happyReduction_30 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (reverse happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  17 happyReduction_31
happyReduction_31 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn17
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 5 17 happyReduction_32
happyReduction_32 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 18 happyReduction_33
happyReduction_33 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 18 happyReduction_34
happyReduction_34 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 63 63 tk (HappyState action) sts stk;
	TypeToken -> cont 19;
	VarToken -> cont 20;
	FunctionToken -> cont 21;
	BreakToken -> cont 22;
	OfToken -> cont 23;
	EndToken -> cont 24;
	InToken -> cont 25;
	NilToken -> cont 26;
	LetToken -> cont 27;
	DoToken -> cont 28;
	ToToken -> cont 29;
	ForToken -> cont 30;
	WhileToken -> cont 31;
	ElseToken -> cont 32;
	ThenToken -> cont 33;
	IfToken -> cont 34;
	ArrayToken -> cont 35;
	AssignToken -> cont 36;
	OrToken -> cont 37;
	AndToken -> cont 38;
	GeToken -> cont 39;
	GtToken -> cont 40;
	LeToken -> cont 41;
	LtToken -> cont 42;
	NeqToken -> cont 43;
	EqToken -> cont 44;
	DivideToken -> cont 45;
	TimesToken -> cont 46;
	MinusToken -> cont 47;
	PlusToken -> cont 48;
	DotToken -> cont 49;
	LbraceToken -> cont 50;
	RbraceToken -> cont 51;
	LbrackToken -> cont 52;
	RbrackToken -> cont 53;
	LparenToken -> cont 54;
	RparenToken -> cont 55;
	SemicolonToken -> cont 56;
	ColonToken -> cont 57;
	CommaToken -> cont 58;
	StringToken happy_dollar_dollar -> cont 59;
	IntToken happy_dollar_dollar -> cont 60;
	IdToken happy_dollar_dollar -> cont 61;
	EofToken -> cont 62;
	_ -> happyError' tk
	})

happyError_ 63 tk = happyError' tk
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
