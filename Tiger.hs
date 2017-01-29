{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24
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
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24

action_0 (32) = happyShift action_12
action_0 (53) = happyShift action_13
action_0 (60) = happyShift action_14
action_0 (65) = happyShift action_15
action_0 (66) = happyShift action_16
action_0 (67) = happyShift action_17
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 (11) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (15) = happyGoto action_11
action_0 _ = happyFail

action_1 (67) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (55) = happyShift action_26
action_3 (58) = happyShift action_27
action_3 _ = happyReduce_12

action_4 (55) = happyShift action_18
action_4 (58) = happyShift action_25
action_4 _ = happyFail

action_5 (69) = happyAccept
action_5 _ = happyFail

action_6 _ = happyReduce_3

action_7 _ = happyReduce_4

action_8 _ = happyReduce_7

action_9 _ = happyReduce_8

action_10 _ = happyReduce_9

action_11 _ = happyReduce_10

action_12 _ = happyReduce_2

action_13 (66) = happyShift action_24
action_13 _ = happyFail

action_14 (32) = happyShift action_12
action_14 (53) = happyShift action_13
action_14 (60) = happyShift action_14
action_14 (61) = happyShift action_23
action_14 (65) = happyShift action_15
action_14 (66) = happyShift action_16
action_14 (67) = happyShift action_17
action_14 (4) = happyGoto action_22
action_14 (5) = happyGoto action_2
action_14 (6) = happyGoto action_3
action_14 (7) = happyGoto action_6
action_14 (9) = happyGoto action_7
action_14 (10) = happyGoto action_8
action_14 (11) = happyGoto action_9
action_14 (13) = happyGoto action_10
action_14 (15) = happyGoto action_11
action_14 _ = happyFail

action_15 _ = happyReduce_6

action_16 _ = happyReduce_5

action_17 (55) = happyShift action_18
action_17 (56) = happyShift action_19
action_17 (58) = happyShift action_20
action_17 (60) = happyShift action_21
action_17 _ = happyReduce_11

action_18 (67) = happyShift action_39
action_18 _ = happyFail

action_19 (57) = happyShift action_37
action_19 (67) = happyShift action_38
action_19 (14) = happyGoto action_36
action_19 _ = happyFail

action_20 (32) = happyShift action_12
action_20 (53) = happyShift action_13
action_20 (60) = happyShift action_14
action_20 (65) = happyShift action_15
action_20 (66) = happyShift action_16
action_20 (67) = happyShift action_17
action_20 (4) = happyGoto action_35
action_20 (5) = happyGoto action_2
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_6
action_20 (9) = happyGoto action_7
action_20 (10) = happyGoto action_8
action_20 (11) = happyGoto action_9
action_20 (13) = happyGoto action_10
action_20 (15) = happyGoto action_11
action_20 _ = happyFail

action_21 (32) = happyShift action_12
action_21 (53) = happyShift action_13
action_21 (60) = happyShift action_14
action_21 (61) = happyShift action_34
action_21 (65) = happyShift action_15
action_21 (66) = happyShift action_16
action_21 (67) = happyShift action_17
action_21 (4) = happyGoto action_32
action_21 (5) = happyGoto action_2
action_21 (6) = happyGoto action_3
action_21 (7) = happyGoto action_6
action_21 (9) = happyGoto action_7
action_21 (10) = happyGoto action_8
action_21 (11) = happyGoto action_9
action_21 (12) = happyGoto action_33
action_21 (13) = happyGoto action_10
action_21 (15) = happyGoto action_11
action_21 _ = happyFail

action_22 (62) = happyShift action_31
action_22 _ = happyFail

action_23 _ = happyReduce_20

action_24 _ = happyReduce_21

action_25 (32) = happyShift action_12
action_25 (53) = happyShift action_13
action_25 (60) = happyShift action_14
action_25 (65) = happyShift action_15
action_25 (66) = happyShift action_16
action_25 (67) = happyShift action_17
action_25 (4) = happyGoto action_30
action_25 (5) = happyGoto action_2
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_6
action_25 (9) = happyGoto action_7
action_25 (10) = happyGoto action_8
action_25 (11) = happyGoto action_9
action_25 (13) = happyGoto action_10
action_25 (15) = happyGoto action_11
action_25 _ = happyFail

action_26 (67) = happyShift action_29
action_26 _ = happyFail

action_27 (32) = happyShift action_12
action_27 (53) = happyShift action_13
action_27 (60) = happyShift action_14
action_27 (65) = happyShift action_15
action_27 (66) = happyShift action_16
action_27 (67) = happyShift action_17
action_27 (4) = happyGoto action_28
action_27 (5) = happyGoto action_2
action_27 (6) = happyGoto action_3
action_27 (7) = happyGoto action_6
action_27 (9) = happyGoto action_7
action_27 (10) = happyGoto action_8
action_27 (11) = happyGoto action_9
action_27 (13) = happyGoto action_10
action_27 (15) = happyGoto action_11
action_27 _ = happyFail

action_28 (59) = happyShift action_48
action_28 _ = happyFail

action_29 _ = happyReduce_14

action_30 (59) = happyShift action_47
action_30 _ = happyFail

action_31 (32) = happyShift action_12
action_31 (53) = happyShift action_13
action_31 (60) = happyShift action_14
action_31 (65) = happyShift action_15
action_31 (66) = happyShift action_16
action_31 (67) = happyShift action_17
action_31 (4) = happyGoto action_46
action_31 (5) = happyGoto action_2
action_31 (6) = happyGoto action_3
action_31 (7) = happyGoto action_6
action_31 (9) = happyGoto action_7
action_31 (10) = happyGoto action_8
action_31 (11) = happyGoto action_9
action_31 (13) = happyGoto action_10
action_31 (15) = happyGoto action_11
action_31 _ = happyFail

action_32 _ = happyReduce_24

action_33 (61) = happyShift action_44
action_33 (64) = happyShift action_45
action_33 _ = happyFail

action_34 _ = happyReduce_22

action_35 (59) = happyShift action_43
action_35 _ = happyFail

action_36 (57) = happyShift action_41
action_36 (64) = happyShift action_42
action_36 _ = happyFail

action_37 _ = happyReduce_26

action_38 (50) = happyShift action_40
action_38 _ = happyFail

action_39 _ = happyReduce_13

action_40 (32) = happyShift action_12
action_40 (53) = happyShift action_13
action_40 (60) = happyShift action_14
action_40 (65) = happyShift action_15
action_40 (66) = happyShift action_16
action_40 (67) = happyShift action_17
action_40 (4) = happyGoto action_53
action_40 (5) = happyGoto action_2
action_40 (6) = happyGoto action_3
action_40 (7) = happyGoto action_6
action_40 (9) = happyGoto action_7
action_40 (10) = happyGoto action_8
action_40 (11) = happyGoto action_9
action_40 (13) = happyGoto action_10
action_40 (15) = happyGoto action_11
action_40 _ = happyFail

action_41 _ = happyReduce_27

action_42 (67) = happyShift action_52
action_42 _ = happyFail

action_43 (29) = happyShift action_51
action_43 _ = happyReduce_15

action_44 _ = happyReduce_23

action_45 (32) = happyShift action_12
action_45 (53) = happyShift action_13
action_45 (60) = happyShift action_14
action_45 (65) = happyShift action_15
action_45 (66) = happyShift action_16
action_45 (67) = happyShift action_17
action_45 (4) = happyGoto action_50
action_45 (5) = happyGoto action_2
action_45 (6) = happyGoto action_3
action_45 (7) = happyGoto action_6
action_45 (9) = happyGoto action_7
action_45 (10) = happyGoto action_8
action_45 (11) = happyGoto action_9
action_45 (13) = happyGoto action_10
action_45 (15) = happyGoto action_11
action_45 _ = happyFail

action_46 (8) = happyGoto action_49
action_46 _ = happyReduce_18

action_47 _ = happyReduce_15

action_48 _ = happyReduce_16

action_49 (61) = happyShift action_56
action_49 (62) = happyShift action_57
action_49 _ = happyFail

action_50 _ = happyReduce_25

action_51 (32) = happyShift action_12
action_51 (53) = happyShift action_13
action_51 (60) = happyShift action_14
action_51 (65) = happyShift action_15
action_51 (66) = happyShift action_16
action_51 (67) = happyShift action_17
action_51 (4) = happyGoto action_55
action_51 (5) = happyGoto action_2
action_51 (6) = happyGoto action_3
action_51 (7) = happyGoto action_6
action_51 (9) = happyGoto action_7
action_51 (10) = happyGoto action_8
action_51 (11) = happyGoto action_9
action_51 (13) = happyGoto action_10
action_51 (15) = happyGoto action_11
action_51 _ = happyFail

action_52 (50) = happyShift action_54
action_52 _ = happyFail

action_53 _ = happyReduce_28

action_54 (32) = happyShift action_12
action_54 (53) = happyShift action_13
action_54 (60) = happyShift action_14
action_54 (65) = happyShift action_15
action_54 (66) = happyShift action_16
action_54 (67) = happyShift action_17
action_54 (4) = happyGoto action_59
action_54 (5) = happyGoto action_2
action_54 (6) = happyGoto action_3
action_54 (7) = happyGoto action_6
action_54 (9) = happyGoto action_7
action_54 (10) = happyGoto action_8
action_54 (11) = happyGoto action_9
action_54 (13) = happyGoto action_10
action_54 (15) = happyGoto action_11
action_54 _ = happyFail

action_55 _ = happyReduce_30

action_56 _ = happyReduce_17

action_57 (32) = happyShift action_12
action_57 (53) = happyShift action_13
action_57 (60) = happyShift action_14
action_57 (65) = happyShift action_15
action_57 (66) = happyShift action_16
action_57 (67) = happyShift action_17
action_57 (4) = happyGoto action_58
action_57 (5) = happyGoto action_2
action_57 (6) = happyGoto action_3
action_57 (7) = happyGoto action_6
action_57 (9) = happyGoto action_7
action_57 (10) = happyGoto action_8
action_57 (11) = happyGoto action_9
action_57 (13) = happyGoto action_10
action_57 (15) = happyGoto action_11
action_57 _ = happyFail

action_58 _ = happyReduce_19

action_59 _ = happyReduce_29

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
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.Seq happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn9  happy_var_1)
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
happyReduction_7 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.Var happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn6
		 (AST.RecField (AST.Var happy_var_1) happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 6 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.ArrSubscript (AST.Var happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 4 6 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 7 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_2 : happy_var_4 : (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_0  8 happyReduction_18
happyReduction_18  =  HappyAbsSyn8
		 ([]
	)

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  9 happyReduction_20
happyReduction_20 _
	_
	 =  HappyAbsSyn9
		 (AST.NoVal
	)

happyReduce_21 = happySpecReduce_2  10 happyReduction_21
happyReduction_21 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn10
		 (AST.Neg happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn11
		 (AST.FunCall happy_var_1 []
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 4 11 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  12 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  13 happyReduction_26
happyReduction_26 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn13
		 (AST.RecExp happy_var_1 []
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 13 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn14
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 5 14 happyReduction_29
happyReduction_29 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 6 15 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_0  16 happyReduction_31
happyReduction_31  =  HappyAbsSyn16
		 ([]
	)

happyReduce_32 = happySpecReduce_1  16 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (reverse happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  17 happyReduction_33
happyReduction_33 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 ([happy_var_1]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  17 happyReduction_34
happyReduction_34 (HappyAbsSyn18  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_2 : happy_var_1
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  18 happyReduction_35
happyReduction_35 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn18
		 (AST.TDec happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  18 happyReduction_36
happyReduction_36 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn18
		 (AST.VDec happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (AST.FDec happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happyReduce 7 19 happyReduction_38
happyReduction_38 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 9 19 happyReduction_39
happyReduction_39 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 20 happyReduction_40
happyReduction_40 ((HappyAbsSyn21  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_1  21 happyReduction_41
happyReduction_41 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn21
		 (AST.Type happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  21 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn22  happy_var_2)
	_
	 =  HappyAbsSyn21
		 (AST.Record happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  21 happyReduction_43
happyReduction_43 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn21
		 (AST.Array happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_0  22 happyReduction_44
happyReduction_44  =  HappyAbsSyn22
		 ([]
	)

happyReduce_45 = happySpecReduce_1  22 happyReduction_45
happyReduction_45 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 (reverse happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  23 happyReduction_46
happyReduction_46 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn23
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happyReduce 5 23 happyReduction_47
happyReduction_47 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_48 = happyReduce 4 24 happyReduction_48
happyReduction_48 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_49 = happyReduce 6 24 happyReduction_49
happyReduction_49 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 69 69 tk (HappyState action) sts stk;
	TypeToken -> cont 25;
	VarToken -> cont 26;
	FunctionToken -> cont 27;
	BreakToken -> cont 28;
	OfToken -> cont 29;
	EndToken -> cont 30;
	InToken -> cont 31;
	NilToken -> cont 32;
	LetToken -> cont 33;
	DoToken -> cont 34;
	ToToken -> cont 35;
	ForToken -> cont 36;
	WhileToken -> cont 37;
	ElseToken -> cont 38;
	ThenToken -> cont 39;
	IfToken -> cont 40;
	ArrayToken -> cont 41;
	AssignToken -> cont 42;
	OrToken -> cont 43;
	AndToken -> cont 44;
	GeToken -> cont 45;
	GtToken -> cont 46;
	LeToken -> cont 47;
	LtToken -> cont 48;
	NeqToken -> cont 49;
	EqToken -> cont 50;
	DivideToken -> cont 51;
	TimesToken -> cont 52;
	MinusToken -> cont 53;
	PlusToken -> cont 54;
	DotToken -> cont 55;
	LbraceToken -> cont 56;
	RbraceToken -> cont 57;
	LbrackToken -> cont 58;
	RbrackToken -> cont 59;
	LparenToken -> cont 60;
	RparenToken -> cont 61;
	SemicolonToken -> cont 62;
	ColonToken -> cont 63;
	CommaToken -> cont 64;
	StringToken happy_dollar_dollar -> cont 65;
	IntToken happy_dollar_dollar -> cont 66;
	IdToken happy_dollar_dollar -> cont 67;
	EofToken -> cont 68;
	_ -> happyError' tk
	})

happyError_ 69 tk = happyError' tk
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
