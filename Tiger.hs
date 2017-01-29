{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22
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
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22

action_0 (30) = happyShift action_10
action_0 (51) = happyShift action_11
action_0 (58) = happyShift action_12
action_0 (63) = happyShift action_13
action_0 (64) = happyShift action_14
action_0 (65) = happyShift action_15
action_0 (4) = happyGoto action_4
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 _ = happyFail

action_1 (65) = happyShift action_3
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (53) = happyShift action_21
action_2 (56) = happyShift action_22
action_2 _ = happyReduce_1

action_3 _ = happyReduce_10

action_4 (67) = happyAccept
action_4 _ = happyFail

action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 _ = happyReduce_7

action_8 _ = happyReduce_8

action_9 _ = happyReduce_9

action_10 _ = happyReduce_2

action_11 (64) = happyShift action_20
action_11 _ = happyFail

action_12 (30) = happyShift action_10
action_12 (51) = happyShift action_11
action_12 (58) = happyShift action_12
action_12 (59) = happyShift action_19
action_12 (63) = happyShift action_13
action_12 (64) = happyShift action_14
action_12 (65) = happyShift action_15
action_12 (4) = happyGoto action_18
action_12 (5) = happyGoto action_2
action_12 (6) = happyGoto action_5
action_12 (8) = happyGoto action_6
action_12 (9) = happyGoto action_7
action_12 (10) = happyGoto action_8
action_12 (12) = happyGoto action_9
action_12 _ = happyFail

action_13 _ = happyReduce_6

action_14 _ = happyReduce_5

action_15 (54) = happyShift action_16
action_15 (58) = happyShift action_17
action_15 _ = happyReduce_10

action_16 (55) = happyShift action_30
action_16 (65) = happyShift action_31
action_16 (13) = happyGoto action_29
action_16 _ = happyFail

action_17 (30) = happyShift action_10
action_17 (51) = happyShift action_11
action_17 (58) = happyShift action_12
action_17 (59) = happyShift action_28
action_17 (63) = happyShift action_13
action_17 (64) = happyShift action_14
action_17 (65) = happyShift action_15
action_17 (4) = happyGoto action_26
action_17 (5) = happyGoto action_2
action_17 (6) = happyGoto action_5
action_17 (8) = happyGoto action_6
action_17 (9) = happyGoto action_7
action_17 (10) = happyGoto action_8
action_17 (11) = happyGoto action_27
action_17 (12) = happyGoto action_9
action_17 _ = happyFail

action_18 (60) = happyShift action_25
action_18 _ = happyFail

action_19 _ = happyReduce_16

action_20 _ = happyReduce_17

action_21 (65) = happyShift action_24
action_21 _ = happyFail

action_22 (30) = happyShift action_10
action_22 (51) = happyShift action_11
action_22 (58) = happyShift action_12
action_22 (63) = happyShift action_13
action_22 (64) = happyShift action_14
action_22 (65) = happyShift action_15
action_22 (4) = happyGoto action_23
action_22 (5) = happyGoto action_2
action_22 (6) = happyGoto action_5
action_22 (8) = happyGoto action_6
action_22 (9) = happyGoto action_7
action_22 (10) = happyGoto action_8
action_22 (12) = happyGoto action_9
action_22 _ = happyFail

action_23 (57) = happyShift action_38
action_23 _ = happyFail

action_24 _ = happyReduce_11

action_25 (30) = happyShift action_10
action_25 (51) = happyShift action_11
action_25 (58) = happyShift action_12
action_25 (63) = happyShift action_13
action_25 (64) = happyShift action_14
action_25 (65) = happyShift action_15
action_25 (4) = happyGoto action_37
action_25 (5) = happyGoto action_2
action_25 (6) = happyGoto action_5
action_25 (8) = happyGoto action_6
action_25 (9) = happyGoto action_7
action_25 (10) = happyGoto action_8
action_25 (12) = happyGoto action_9
action_25 _ = happyFail

action_26 _ = happyReduce_20

action_27 (59) = happyShift action_35
action_27 (62) = happyShift action_36
action_27 _ = happyFail

action_28 _ = happyReduce_18

action_29 (55) = happyShift action_33
action_29 (62) = happyShift action_34
action_29 _ = happyFail

action_30 _ = happyReduce_22

action_31 (48) = happyShift action_32
action_31 _ = happyFail

action_32 (30) = happyShift action_10
action_32 (51) = happyShift action_11
action_32 (58) = happyShift action_12
action_32 (63) = happyShift action_13
action_32 (64) = happyShift action_14
action_32 (65) = happyShift action_15
action_32 (4) = happyGoto action_42
action_32 (5) = happyGoto action_2
action_32 (6) = happyGoto action_5
action_32 (8) = happyGoto action_6
action_32 (9) = happyGoto action_7
action_32 (10) = happyGoto action_8
action_32 (12) = happyGoto action_9
action_32 _ = happyFail

action_33 _ = happyReduce_23

action_34 (65) = happyShift action_41
action_34 _ = happyFail

action_35 _ = happyReduce_19

action_36 (30) = happyShift action_10
action_36 (51) = happyShift action_11
action_36 (58) = happyShift action_12
action_36 (63) = happyShift action_13
action_36 (64) = happyShift action_14
action_36 (65) = happyShift action_15
action_36 (4) = happyGoto action_40
action_36 (5) = happyGoto action_2
action_36 (6) = happyGoto action_5
action_36 (8) = happyGoto action_6
action_36 (9) = happyGoto action_7
action_36 (10) = happyGoto action_8
action_36 (12) = happyGoto action_9
action_36 _ = happyFail

action_37 (7) = happyGoto action_39
action_37 _ = happyReduce_14

action_38 _ = happyReduce_12

action_39 (59) = happyShift action_44
action_39 (60) = happyShift action_45
action_39 _ = happyFail

action_40 _ = happyReduce_21

action_41 (48) = happyShift action_43
action_41 _ = happyFail

action_42 _ = happyReduce_24

action_43 (30) = happyShift action_10
action_43 (51) = happyShift action_11
action_43 (58) = happyShift action_12
action_43 (63) = happyShift action_13
action_43 (64) = happyShift action_14
action_43 (65) = happyShift action_15
action_43 (4) = happyGoto action_47
action_43 (5) = happyGoto action_2
action_43 (6) = happyGoto action_5
action_43 (8) = happyGoto action_6
action_43 (9) = happyGoto action_7
action_43 (10) = happyGoto action_8
action_43 (12) = happyGoto action_9
action_43 _ = happyFail

action_44 _ = happyReduce_13

action_45 (30) = happyShift action_10
action_45 (51) = happyShift action_11
action_45 (58) = happyShift action_12
action_45 (63) = happyShift action_13
action_45 (64) = happyShift action_14
action_45 (65) = happyShift action_15
action_45 (4) = happyGoto action_46
action_45 (5) = happyGoto action_2
action_45 (6) = happyGoto action_5
action_45 (8) = happyGoto action_6
action_45 (9) = happyGoto action_7
action_45 (10) = happyGoto action_8
action_45 (12) = happyGoto action_9
action_45 _ = happyFail

action_46 _ = happyReduce_15

action_47 _ = happyReduce_25

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

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.Var happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 5 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 6 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_2 : happy_var_4 : (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_0  7 happyReduction_14
happyReduction_14  =  HappyAbsSyn7
		 ([]
	)

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  8 happyReduction_16
happyReduction_16 _
	_
	 =  HappyAbsSyn8
		 (AST.NoVal
	)

happyReduce_17 = happySpecReduce_2  9 happyReduction_17
happyReduction_17 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn9
		 (AST.Neg happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn10
		 (AST.FunCall happy_var_1 []
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  11 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  11 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn12
		 (AST.RecExp happy_var_1 []
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 4 12 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn13
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 5 13 happyReduction_25
happyReduction_25 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_0  14 happyReduction_26
happyReduction_26  =  HappyAbsSyn14
		 ([]
	)

happyReduce_27 = happySpecReduce_1  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (reverse happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  15 happyReduction_28
happyReduction_28 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  15 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_2 : happy_var_1
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  16 happyReduction_30
happyReduction_30 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn16
		 (AST.TDec happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  16 happyReduction_31
happyReduction_31 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn16
		 (AST.VDec happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  16 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (AST.FDec happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happyReduce 7 17 happyReduction_33
happyReduction_33 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 9 17 happyReduction_34
happyReduction_34 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 4 18 happyReduction_35
happyReduction_35 ((HappyAbsSyn19  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_1  19 happyReduction_36
happyReduction_36 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn19
		 (AST.Type happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  19 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (AST.Record happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  19 happyReduction_38
happyReduction_38 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn19
		 (AST.Array happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_0  20 happyReduction_39
happyReduction_39  =  HappyAbsSyn20
		 ([]
	)

happyReduce_40 = happySpecReduce_1  20 happyReduction_40
happyReduction_40 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (reverse happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  21 happyReduction_41
happyReduction_41 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn21
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 5 21 happyReduction_42
happyReduction_42 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 4 22 happyReduction_43
happyReduction_43 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 6 22 happyReduction_44
happyReduction_44 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 67 67 tk (HappyState action) sts stk;
	TypeToken -> cont 23;
	VarToken -> cont 24;
	FunctionToken -> cont 25;
	BreakToken -> cont 26;
	OfToken -> cont 27;
	EndToken -> cont 28;
	InToken -> cont 29;
	NilToken -> cont 30;
	LetToken -> cont 31;
	DoToken -> cont 32;
	ToToken -> cont 33;
	ForToken -> cont 34;
	WhileToken -> cont 35;
	ElseToken -> cont 36;
	ThenToken -> cont 37;
	IfToken -> cont 38;
	ArrayToken -> cont 39;
	AssignToken -> cont 40;
	OrToken -> cont 41;
	AndToken -> cont 42;
	GeToken -> cont 43;
	GtToken -> cont 44;
	LeToken -> cont 45;
	LtToken -> cont 46;
	NeqToken -> cont 47;
	EqToken -> cont 48;
	DivideToken -> cont 49;
	TimesToken -> cont 50;
	MinusToken -> cont 51;
	PlusToken -> cont 52;
	DotToken -> cont 53;
	LbraceToken -> cont 54;
	RbraceToken -> cont 55;
	LbrackToken -> cont 56;
	RbrackToken -> cont 57;
	LparenToken -> cont 58;
	RparenToken -> cont 59;
	SemicolonToken -> cont 60;
	ColonToken -> cont 61;
	CommaToken -> cont 62;
	StringToken happy_dollar_dollar -> cont 63;
	IntToken happy_dollar_dollar -> cont 64;
	IdToken happy_dollar_dollar -> cont 65;
	EofToken -> cont 66;
	_ -> happyError' tk
	})

happyError_ 67 tk = happyError' tk
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
