{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25
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
	| HappyAbsSyn25 t25

action_0 (33) = happyShift action_14
action_0 (54) = happyShift action_15
action_0 (61) = happyShift action_16
action_0 (66) = happyShift action_17
action_0 (67) = happyShift action_18
action_0 (68) = happyShift action_19
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_6
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 (13) = happyGoto action_11
action_0 (15) = happyGoto action_12
action_0 (16) = happyGoto action_13
action_0 _ = happyFail

action_1 (68) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail

action_2 _ = happyFail

action_3 (56) = happyShift action_29
action_3 (59) = happyShift action_30
action_3 _ = happyReduce_13

action_4 (56) = happyShift action_20
action_4 (59) = happyShift action_28
action_4 _ = happyFail

action_5 (70) = happyAccept
action_5 _ = happyFail

action_6 (43) = happyShift action_27
action_6 _ = happyReduce_1

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_7

action_10 _ = happyReduce_8

action_11 _ = happyReduce_9

action_12 _ = happyReduce_10

action_13 _ = happyReduce_11

action_14 _ = happyReduce_2

action_15 (67) = happyShift action_26
action_15 _ = happyFail

action_16 (33) = happyShift action_14
action_16 (54) = happyShift action_15
action_16 (61) = happyShift action_16
action_16 (62) = happyShift action_25
action_16 (66) = happyShift action_17
action_16 (67) = happyShift action_18
action_16 (68) = happyShift action_19
action_16 (4) = happyGoto action_24
action_16 (5) = happyGoto action_6
action_16 (6) = happyGoto action_3
action_16 (7) = happyGoto action_7
action_16 (9) = happyGoto action_8
action_16 (10) = happyGoto action_9
action_16 (11) = happyGoto action_10
action_16 (13) = happyGoto action_11
action_16 (15) = happyGoto action_12
action_16 (16) = happyGoto action_13
action_16 _ = happyFail

action_17 _ = happyReduce_6

action_18 _ = happyReduce_5

action_19 (56) = happyShift action_20
action_19 (57) = happyShift action_21
action_19 (59) = happyShift action_22
action_19 (61) = happyShift action_23
action_19 _ = happyReduce_12

action_20 (68) = happyShift action_43
action_20 _ = happyFail

action_21 (58) = happyShift action_41
action_21 (68) = happyShift action_42
action_21 (14) = happyGoto action_40
action_21 _ = happyFail

action_22 (33) = happyShift action_14
action_22 (54) = happyShift action_15
action_22 (61) = happyShift action_16
action_22 (66) = happyShift action_17
action_22 (67) = happyShift action_18
action_22 (68) = happyShift action_19
action_22 (4) = happyGoto action_39
action_22 (5) = happyGoto action_6
action_22 (6) = happyGoto action_3
action_22 (7) = happyGoto action_7
action_22 (9) = happyGoto action_8
action_22 (10) = happyGoto action_9
action_22 (11) = happyGoto action_10
action_22 (13) = happyGoto action_11
action_22 (15) = happyGoto action_12
action_22 (16) = happyGoto action_13
action_22 _ = happyFail

action_23 (33) = happyShift action_14
action_23 (54) = happyShift action_15
action_23 (61) = happyShift action_16
action_23 (62) = happyShift action_38
action_23 (66) = happyShift action_17
action_23 (67) = happyShift action_18
action_23 (68) = happyShift action_19
action_23 (4) = happyGoto action_36
action_23 (5) = happyGoto action_6
action_23 (6) = happyGoto action_3
action_23 (7) = happyGoto action_7
action_23 (9) = happyGoto action_8
action_23 (10) = happyGoto action_9
action_23 (11) = happyGoto action_10
action_23 (12) = happyGoto action_37
action_23 (13) = happyGoto action_11
action_23 (15) = happyGoto action_12
action_23 (16) = happyGoto action_13
action_23 _ = happyFail

action_24 (63) = happyShift action_35
action_24 _ = happyFail

action_25 _ = happyReduce_21

action_26 _ = happyReduce_22

action_27 (33) = happyShift action_14
action_27 (54) = happyShift action_15
action_27 (61) = happyShift action_16
action_27 (66) = happyShift action_17
action_27 (67) = happyShift action_18
action_27 (68) = happyShift action_19
action_27 (4) = happyGoto action_34
action_27 (5) = happyGoto action_6
action_27 (6) = happyGoto action_3
action_27 (7) = happyGoto action_7
action_27 (9) = happyGoto action_8
action_27 (10) = happyGoto action_9
action_27 (11) = happyGoto action_10
action_27 (13) = happyGoto action_11
action_27 (15) = happyGoto action_12
action_27 (16) = happyGoto action_13
action_27 _ = happyFail

action_28 (33) = happyShift action_14
action_28 (54) = happyShift action_15
action_28 (61) = happyShift action_16
action_28 (66) = happyShift action_17
action_28 (67) = happyShift action_18
action_28 (68) = happyShift action_19
action_28 (4) = happyGoto action_33
action_28 (5) = happyGoto action_6
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_7
action_28 (9) = happyGoto action_8
action_28 (10) = happyGoto action_9
action_28 (11) = happyGoto action_10
action_28 (13) = happyGoto action_11
action_28 (15) = happyGoto action_12
action_28 (16) = happyGoto action_13
action_28 _ = happyFail

action_29 (68) = happyShift action_32
action_29 _ = happyFail

action_30 (33) = happyShift action_14
action_30 (54) = happyShift action_15
action_30 (61) = happyShift action_16
action_30 (66) = happyShift action_17
action_30 (67) = happyShift action_18
action_30 (68) = happyShift action_19
action_30 (4) = happyGoto action_31
action_30 (5) = happyGoto action_6
action_30 (6) = happyGoto action_3
action_30 (7) = happyGoto action_7
action_30 (9) = happyGoto action_8
action_30 (10) = happyGoto action_9
action_30 (11) = happyGoto action_10
action_30 (13) = happyGoto action_11
action_30 (15) = happyGoto action_12
action_30 (16) = happyGoto action_13
action_30 _ = happyFail

action_31 (60) = happyShift action_52
action_31 _ = happyFail

action_32 _ = happyReduce_15

action_33 (60) = happyShift action_51
action_33 _ = happyFail

action_34 _ = happyReduce_32

action_35 (33) = happyShift action_14
action_35 (54) = happyShift action_15
action_35 (61) = happyShift action_16
action_35 (66) = happyShift action_17
action_35 (67) = happyShift action_18
action_35 (68) = happyShift action_19
action_35 (4) = happyGoto action_50
action_35 (5) = happyGoto action_6
action_35 (6) = happyGoto action_3
action_35 (7) = happyGoto action_7
action_35 (9) = happyGoto action_8
action_35 (10) = happyGoto action_9
action_35 (11) = happyGoto action_10
action_35 (13) = happyGoto action_11
action_35 (15) = happyGoto action_12
action_35 (16) = happyGoto action_13
action_35 _ = happyFail

action_36 _ = happyReduce_25

action_37 (62) = happyShift action_48
action_37 (65) = happyShift action_49
action_37 _ = happyFail

action_38 _ = happyReduce_23

action_39 (60) = happyShift action_47
action_39 _ = happyFail

action_40 (58) = happyShift action_45
action_40 (65) = happyShift action_46
action_40 _ = happyFail

action_41 _ = happyReduce_27

action_42 (51) = happyShift action_44
action_42 _ = happyFail

action_43 _ = happyReduce_14

action_44 (33) = happyShift action_14
action_44 (54) = happyShift action_15
action_44 (61) = happyShift action_16
action_44 (66) = happyShift action_17
action_44 (67) = happyShift action_18
action_44 (68) = happyShift action_19
action_44 (4) = happyGoto action_57
action_44 (5) = happyGoto action_6
action_44 (6) = happyGoto action_3
action_44 (7) = happyGoto action_7
action_44 (9) = happyGoto action_8
action_44 (10) = happyGoto action_9
action_44 (11) = happyGoto action_10
action_44 (13) = happyGoto action_11
action_44 (15) = happyGoto action_12
action_44 (16) = happyGoto action_13
action_44 _ = happyFail

action_45 _ = happyReduce_28

action_46 (68) = happyShift action_56
action_46 _ = happyFail

action_47 (30) = happyShift action_55
action_47 _ = happyReduce_16

action_48 _ = happyReduce_24

action_49 (33) = happyShift action_14
action_49 (54) = happyShift action_15
action_49 (61) = happyShift action_16
action_49 (66) = happyShift action_17
action_49 (67) = happyShift action_18
action_49 (68) = happyShift action_19
action_49 (4) = happyGoto action_54
action_49 (5) = happyGoto action_6
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_7
action_49 (9) = happyGoto action_8
action_49 (10) = happyGoto action_9
action_49 (11) = happyGoto action_10
action_49 (13) = happyGoto action_11
action_49 (15) = happyGoto action_12
action_49 (16) = happyGoto action_13
action_49 _ = happyFail

action_50 (8) = happyGoto action_53
action_50 _ = happyReduce_19

action_51 _ = happyReduce_16

action_52 _ = happyReduce_17

action_53 (62) = happyShift action_60
action_53 (63) = happyShift action_61
action_53 _ = happyFail

action_54 _ = happyReduce_26

action_55 (33) = happyShift action_14
action_55 (54) = happyShift action_15
action_55 (61) = happyShift action_16
action_55 (66) = happyShift action_17
action_55 (67) = happyShift action_18
action_55 (68) = happyShift action_19
action_55 (4) = happyGoto action_59
action_55 (5) = happyGoto action_6
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_7
action_55 (9) = happyGoto action_8
action_55 (10) = happyGoto action_9
action_55 (11) = happyGoto action_10
action_55 (13) = happyGoto action_11
action_55 (15) = happyGoto action_12
action_55 (16) = happyGoto action_13
action_55 _ = happyFail

action_56 (51) = happyShift action_58
action_56 _ = happyFail

action_57 _ = happyReduce_29

action_58 (33) = happyShift action_14
action_58 (54) = happyShift action_15
action_58 (61) = happyShift action_16
action_58 (66) = happyShift action_17
action_58 (67) = happyShift action_18
action_58 (68) = happyShift action_19
action_58 (4) = happyGoto action_63
action_58 (5) = happyGoto action_6
action_58 (6) = happyGoto action_3
action_58 (7) = happyGoto action_7
action_58 (9) = happyGoto action_8
action_58 (10) = happyGoto action_9
action_58 (11) = happyGoto action_10
action_58 (13) = happyGoto action_11
action_58 (15) = happyGoto action_12
action_58 (16) = happyGoto action_13
action_58 _ = happyFail

action_59 _ = happyReduce_31

action_60 _ = happyReduce_18

action_61 (33) = happyShift action_14
action_61 (54) = happyShift action_15
action_61 (61) = happyShift action_16
action_61 (66) = happyShift action_17
action_61 (67) = happyShift action_18
action_61 (68) = happyShift action_19
action_61 (4) = happyGoto action_62
action_61 (5) = happyGoto action_6
action_61 (6) = happyGoto action_3
action_61 (7) = happyGoto action_7
action_61 (9) = happyGoto action_8
action_61 (10) = happyGoto action_9
action_61 (11) = happyGoto action_10
action_61 (13) = happyGoto action_11
action_61 (15) = happyGoto action_12
action_61 (16) = happyGoto action_13
action_61 _ = happyFail

action_62 _ = happyReduce_20

action_63 _ = happyReduce_30

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

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.Var happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn6
		 (AST.RecField (AST.Var happy_var_1) happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 6 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.ArrSubscript (AST.Var happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 6 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 7 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_2 : happy_var_4 : (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_0  8 happyReduction_19
happyReduction_19  =  HappyAbsSyn8
		 ([]
	)

happyReduce_20 = happySpecReduce_3  8 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  9 happyReduction_21
happyReduction_21 _
	_
	 =  HappyAbsSyn9
		 (AST.NoVal
	)

happyReduce_22 = happySpecReduce_2  10 happyReduction_22
happyReduction_22 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn10
		 (AST.Neg happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn11
		 (AST.FunCall happy_var_1 []
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 11 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_1  12 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn13
		 (AST.RecExp happy_var_1 []
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 13 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn14
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 5 14 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 15 happyReduction_31
happyReduction_31 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn16
		 (AST.Assign happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_0  17 happyReduction_33
happyReduction_33  =  HappyAbsSyn17
		 ([]
	)

happyReduce_34 = happySpecReduce_1  17 happyReduction_34
happyReduction_34 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (reverse happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  18 happyReduction_35
happyReduction_35 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 ([happy_var_1]
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  18 happyReduction_36
happyReduction_36 (HappyAbsSyn19  happy_var_2)
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_2 : happy_var_1
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  19 happyReduction_37
happyReduction_37 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn19
		 (AST.TDec happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  19 happyReduction_38
happyReduction_38 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn19
		 (AST.VDec happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  19 happyReduction_39
happyReduction_39 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (AST.FDec happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happyReduce 7 20 happyReduction_40
happyReduction_40 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 9 20 happyReduction_41
happyReduction_41 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 4 21 happyReduction_42
happyReduction_42 ((HappyAbsSyn22  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_1  22 happyReduction_43
happyReduction_43 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn22
		 (AST.Type happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  22 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn23  happy_var_2)
	_
	 =  HappyAbsSyn22
		 (AST.Record happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  22 happyReduction_45
happyReduction_45 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn22
		 (AST.Array happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  23 happyReduction_46
happyReduction_46  =  HappyAbsSyn23
		 ([]
	)

happyReduce_47 = happySpecReduce_1  23 happyReduction_47
happyReduction_47 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (reverse happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  24 happyReduction_48
happyReduction_48 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn24
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happyReduce 5 24 happyReduction_49
happyReduction_49 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_50 = happyReduce 4 25 happyReduction_50
happyReduction_50 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 6 25 happyReduction_51
happyReduction_51 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 70 70 tk (HappyState action) sts stk;
	TypeToken -> cont 26;
	VarToken -> cont 27;
	FunctionToken -> cont 28;
	BreakToken -> cont 29;
	OfToken -> cont 30;
	EndToken -> cont 31;
	InToken -> cont 32;
	NilToken -> cont 33;
	LetToken -> cont 34;
	DoToken -> cont 35;
	ToToken -> cont 36;
	ForToken -> cont 37;
	WhileToken -> cont 38;
	ElseToken -> cont 39;
	ThenToken -> cont 40;
	IfToken -> cont 41;
	ArrayToken -> cont 42;
	AssignToken -> cont 43;
	OrToken -> cont 44;
	AndToken -> cont 45;
	GeToken -> cont 46;
	GtToken -> cont 47;
	LeToken -> cont 48;
	LtToken -> cont 49;
	NeqToken -> cont 50;
	EqToken -> cont 51;
	DivideToken -> cont 52;
	TimesToken -> cont 53;
	MinusToken -> cont 54;
	PlusToken -> cont 55;
	DotToken -> cont 56;
	LbraceToken -> cont 57;
	RbraceToken -> cont 58;
	LbrackToken -> cont 59;
	RbrackToken -> cont 60;
	LparenToken -> cont 61;
	RparenToken -> cont 62;
	SemicolonToken -> cont 63;
	ColonToken -> cont 64;
	CommaToken -> cont 65;
	StringToken happy_dollar_dollar -> cont 66;
	IntToken happy_dollar_dollar -> cont 67;
	IdToken happy_dollar_dollar -> cont 68;
	EofToken -> cont 69;
	_ -> happyError' tk
	})

happyError_ 70 tk = happyError' tk
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
