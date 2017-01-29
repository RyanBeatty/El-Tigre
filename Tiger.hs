{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31
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
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31

action_0 (35) = happyShift action_15
action_0 (39) = happyShift action_16
action_0 (40) = happyShift action_17
action_0 (43) = happyShift action_18
action_0 (44) = happyShift action_19
action_0 (47) = happyShift action_20
action_0 (60) = happyShift action_21
action_0 (67) = happyShift action_22
action_0 (72) = happyShift action_23
action_0 (73) = happyShift action_24
action_0 (74) = happyShift action_25
action_0 (4) = happyGoto action_26
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (10) = happyGoto action_6
action_0 (11) = happyGoto action_7
action_0 (14) = happyGoto action_8
action_0 (16) = happyGoto action_9
action_0 (17) = happyGoto action_10
action_0 (18) = happyGoto action_11
action_0 (19) = happyGoto action_12
action_0 (20) = happyGoto action_13
action_0 (21) = happyGoto action_14
action_0 _ = happyFail

action_1 (35) = happyShift action_15
action_1 (39) = happyShift action_16
action_1 (40) = happyShift action_17
action_1 (43) = happyShift action_18
action_1 (44) = happyShift action_19
action_1 (47) = happyShift action_20
action_1 (60) = happyShift action_21
action_1 (67) = happyShift action_22
action_1 (72) = happyShift action_23
action_1 (73) = happyShift action_24
action_1 (74) = happyShift action_25
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (10) = happyGoto action_6
action_1 (11) = happyGoto action_7
action_1 (14) = happyGoto action_8
action_1 (16) = happyGoto action_9
action_1 (17) = happyGoto action_10
action_1 (18) = happyGoto action_11
action_1 (19) = happyGoto action_12
action_1 (20) = happyGoto action_13
action_1 (21) = happyGoto action_14
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (49) = happyShift action_47
action_3 _ = happyReduce_2

action_4 (62) = happyShift action_45
action_4 (65) = happyShift action_46
action_4 _ = happyReduce_18

action_5 _ = happyReduce_4

action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 _ = happyReduce_9

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_13

action_13 _ = happyReduce_14

action_14 _ = happyReduce_16

action_15 _ = happyReduce_15

action_16 _ = happyReduce_3

action_17 (32) = happyShift action_42
action_17 (33) = happyShift action_43
action_17 (34) = happyShift action_44
action_17 (23) = happyGoto action_36
action_17 (24) = happyGoto action_37
action_17 (25) = happyGoto action_38
action_17 (26) = happyGoto action_39
action_17 (27) = happyGoto action_40
action_17 (31) = happyGoto action_41
action_17 _ = happyReduce_46

action_18 (74) = happyShift action_35
action_18 _ = happyFail

action_19 (35) = happyShift action_15
action_19 (39) = happyShift action_16
action_19 (40) = happyShift action_17
action_19 (43) = happyShift action_18
action_19 (44) = happyShift action_19
action_19 (47) = happyShift action_20
action_19 (60) = happyShift action_21
action_19 (67) = happyShift action_22
action_19 (72) = happyShift action_23
action_19 (73) = happyShift action_24
action_19 (74) = happyShift action_25
action_19 (5) = happyGoto action_34
action_19 (6) = happyGoto action_3
action_19 (7) = happyGoto action_4
action_19 (8) = happyGoto action_5
action_19 (10) = happyGoto action_6
action_19 (11) = happyGoto action_7
action_19 (14) = happyGoto action_8
action_19 (16) = happyGoto action_9
action_19 (17) = happyGoto action_10
action_19 (18) = happyGoto action_11
action_19 (19) = happyGoto action_12
action_19 (20) = happyGoto action_13
action_19 (21) = happyGoto action_14
action_19 _ = happyFail

action_20 (35) = happyShift action_15
action_20 (39) = happyShift action_16
action_20 (40) = happyShift action_17
action_20 (43) = happyShift action_18
action_20 (44) = happyShift action_19
action_20 (47) = happyShift action_20
action_20 (60) = happyShift action_21
action_20 (67) = happyShift action_22
action_20 (72) = happyShift action_23
action_20 (73) = happyShift action_24
action_20 (74) = happyShift action_25
action_20 (5) = happyGoto action_33
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_4
action_20 (8) = happyGoto action_5
action_20 (10) = happyGoto action_6
action_20 (11) = happyGoto action_7
action_20 (14) = happyGoto action_8
action_20 (16) = happyGoto action_9
action_20 (17) = happyGoto action_10
action_20 (18) = happyGoto action_11
action_20 (19) = happyGoto action_12
action_20 (20) = happyGoto action_13
action_20 (21) = happyGoto action_14
action_20 _ = happyFail

action_21 (73) = happyShift action_32
action_21 _ = happyFail

action_22 (35) = happyShift action_15
action_22 (39) = happyShift action_16
action_22 (40) = happyShift action_17
action_22 (43) = happyShift action_18
action_22 (44) = happyShift action_19
action_22 (47) = happyShift action_20
action_22 (60) = happyShift action_21
action_22 (67) = happyShift action_22
action_22 (72) = happyShift action_23
action_22 (73) = happyShift action_24
action_22 (74) = happyShift action_25
action_22 (5) = happyGoto action_31
action_22 (6) = happyGoto action_3
action_22 (7) = happyGoto action_4
action_22 (8) = happyGoto action_5
action_22 (10) = happyGoto action_6
action_22 (11) = happyGoto action_7
action_22 (14) = happyGoto action_8
action_22 (16) = happyGoto action_9
action_22 (17) = happyGoto action_10
action_22 (18) = happyGoto action_11
action_22 (19) = happyGoto action_12
action_22 (20) = happyGoto action_13
action_22 (21) = happyGoto action_14
action_22 _ = happyFail

action_23 _ = happyReduce_6

action_24 _ = happyReduce_5

action_25 (62) = happyShift action_27
action_25 (63) = happyShift action_28
action_25 (65) = happyShift action_29
action_25 (67) = happyShift action_30
action_25 _ = happyReduce_17

action_26 (76) = happyAccept
action_26 _ = happyFail

action_27 (74) = happyShift action_65
action_27 _ = happyFail

action_28 (74) = happyShift action_64
action_28 (15) = happyGoto action_63
action_28 _ = happyReduce_33

action_29 (35) = happyShift action_15
action_29 (39) = happyShift action_16
action_29 (40) = happyShift action_17
action_29 (43) = happyShift action_18
action_29 (44) = happyShift action_19
action_29 (47) = happyShift action_20
action_29 (60) = happyShift action_21
action_29 (67) = happyShift action_22
action_29 (72) = happyShift action_23
action_29 (73) = happyShift action_24
action_29 (74) = happyShift action_25
action_29 (5) = happyGoto action_62
action_29 (6) = happyGoto action_3
action_29 (7) = happyGoto action_4
action_29 (8) = happyGoto action_5
action_29 (10) = happyGoto action_6
action_29 (11) = happyGoto action_7
action_29 (14) = happyGoto action_8
action_29 (16) = happyGoto action_9
action_29 (17) = happyGoto action_10
action_29 (18) = happyGoto action_11
action_29 (19) = happyGoto action_12
action_29 (20) = happyGoto action_13
action_29 (21) = happyGoto action_14
action_29 _ = happyFail

action_30 (35) = happyShift action_15
action_30 (39) = happyShift action_16
action_30 (40) = happyShift action_17
action_30 (43) = happyShift action_18
action_30 (44) = happyShift action_19
action_30 (47) = happyShift action_20
action_30 (60) = happyShift action_21
action_30 (67) = happyShift action_22
action_30 (72) = happyShift action_23
action_30 (73) = happyShift action_24
action_30 (74) = happyShift action_25
action_30 (5) = happyGoto action_60
action_30 (6) = happyGoto action_3
action_30 (7) = happyGoto action_4
action_30 (8) = happyGoto action_5
action_30 (10) = happyGoto action_6
action_30 (11) = happyGoto action_7
action_30 (12) = happyGoto action_61
action_30 (14) = happyGoto action_8
action_30 (16) = happyGoto action_9
action_30 (17) = happyGoto action_10
action_30 (18) = happyGoto action_11
action_30 (19) = happyGoto action_12
action_30 (20) = happyGoto action_13
action_30 (21) = happyGoto action_14
action_30 _ = happyReduce_28

action_31 (69) = happyShift action_59
action_31 _ = happyFail

action_32 _ = happyReduce_26

action_33 (46) = happyShift action_58
action_33 _ = happyFail

action_34 (41) = happyShift action_57
action_34 _ = happyFail

action_35 (49) = happyShift action_56
action_35 _ = happyFail

action_36 (38) = happyShift action_55
action_36 _ = happyFail

action_37 (32) = happyShift action_42
action_37 (33) = happyShift action_43
action_37 (34) = happyShift action_44
action_37 (25) = happyGoto action_54
action_37 (26) = happyGoto action_39
action_37 (27) = happyGoto action_40
action_37 (31) = happyGoto action_41
action_37 _ = happyReduce_47

action_38 _ = happyReduce_48

action_39 _ = happyReduce_52

action_40 _ = happyReduce_50

action_41 _ = happyReduce_51

action_42 (74) = happyShift action_53
action_42 _ = happyFail

action_43 (74) = happyShift action_52
action_43 _ = happyFail

action_44 (74) = happyShift action_51
action_44 _ = happyFail

action_45 (74) = happyShift action_50
action_45 _ = happyFail

action_46 (35) = happyShift action_15
action_46 (39) = happyShift action_16
action_46 (40) = happyShift action_17
action_46 (43) = happyShift action_18
action_46 (44) = happyShift action_19
action_46 (47) = happyShift action_20
action_46 (60) = happyShift action_21
action_46 (67) = happyShift action_22
action_46 (72) = happyShift action_23
action_46 (73) = happyShift action_24
action_46 (74) = happyShift action_25
action_46 (5) = happyGoto action_49
action_46 (6) = happyGoto action_3
action_46 (7) = happyGoto action_4
action_46 (8) = happyGoto action_5
action_46 (10) = happyGoto action_6
action_46 (11) = happyGoto action_7
action_46 (14) = happyGoto action_8
action_46 (16) = happyGoto action_9
action_46 (17) = happyGoto action_10
action_46 (18) = happyGoto action_11
action_46 (19) = happyGoto action_12
action_46 (20) = happyGoto action_13
action_46 (21) = happyGoto action_14
action_46 _ = happyFail

action_47 (35) = happyShift action_15
action_47 (39) = happyShift action_16
action_47 (40) = happyShift action_17
action_47 (43) = happyShift action_18
action_47 (44) = happyShift action_19
action_47 (47) = happyShift action_20
action_47 (60) = happyShift action_21
action_47 (67) = happyShift action_22
action_47 (72) = happyShift action_23
action_47 (73) = happyShift action_24
action_47 (74) = happyShift action_25
action_47 (5) = happyGoto action_48
action_47 (6) = happyGoto action_3
action_47 (7) = happyGoto action_4
action_47 (8) = happyGoto action_5
action_47 (10) = happyGoto action_6
action_47 (11) = happyGoto action_7
action_47 (14) = happyGoto action_8
action_47 (16) = happyGoto action_9
action_47 (17) = happyGoto action_10
action_47 (18) = happyGoto action_11
action_47 (19) = happyGoto action_12
action_47 (20) = happyGoto action_13
action_47 (21) = happyGoto action_14
action_47 _ = happyFail

action_48 _ = happyReduce_37

action_49 (66) = happyShift action_82
action_49 _ = happyFail

action_50 _ = happyReduce_20

action_51 (67) = happyShift action_81
action_51 _ = happyFail

action_52 (49) = happyShift action_79
action_52 (70) = happyShift action_80
action_52 _ = happyFail

action_53 (57) = happyShift action_78
action_53 _ = happyFail

action_54 _ = happyReduce_49

action_55 (35) = happyShift action_15
action_55 (39) = happyShift action_16
action_55 (40) = happyShift action_17
action_55 (43) = happyShift action_18
action_55 (44) = happyShift action_19
action_55 (47) = happyShift action_20
action_55 (60) = happyShift action_21
action_55 (67) = happyShift action_22
action_55 (72) = happyShift action_23
action_55 (73) = happyShift action_24
action_55 (74) = happyShift action_25
action_55 (5) = happyGoto action_76
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_4
action_55 (8) = happyGoto action_5
action_55 (10) = happyGoto action_6
action_55 (11) = happyGoto action_7
action_55 (14) = happyGoto action_8
action_55 (16) = happyGoto action_9
action_55 (17) = happyGoto action_10
action_55 (18) = happyGoto action_11
action_55 (19) = happyGoto action_12
action_55 (20) = happyGoto action_13
action_55 (21) = happyGoto action_14
action_55 (22) = happyGoto action_77
action_55 _ = happyReduce_43

action_56 (35) = happyShift action_15
action_56 (39) = happyShift action_16
action_56 (40) = happyShift action_17
action_56 (43) = happyShift action_18
action_56 (44) = happyShift action_19
action_56 (47) = happyShift action_20
action_56 (60) = happyShift action_21
action_56 (67) = happyShift action_22
action_56 (72) = happyShift action_23
action_56 (73) = happyShift action_24
action_56 (74) = happyShift action_25
action_56 (5) = happyGoto action_75
action_56 (6) = happyGoto action_3
action_56 (7) = happyGoto action_4
action_56 (8) = happyGoto action_5
action_56 (10) = happyGoto action_6
action_56 (11) = happyGoto action_7
action_56 (14) = happyGoto action_8
action_56 (16) = happyGoto action_9
action_56 (17) = happyGoto action_10
action_56 (18) = happyGoto action_11
action_56 (19) = happyGoto action_12
action_56 (20) = happyGoto action_13
action_56 (21) = happyGoto action_14
action_56 _ = happyFail

action_57 (35) = happyShift action_15
action_57 (39) = happyShift action_16
action_57 (40) = happyShift action_17
action_57 (43) = happyShift action_18
action_57 (44) = happyShift action_19
action_57 (47) = happyShift action_20
action_57 (60) = happyShift action_21
action_57 (67) = happyShift action_22
action_57 (72) = happyShift action_23
action_57 (73) = happyShift action_24
action_57 (74) = happyShift action_25
action_57 (5) = happyGoto action_74
action_57 (6) = happyGoto action_3
action_57 (7) = happyGoto action_4
action_57 (8) = happyGoto action_5
action_57 (10) = happyGoto action_6
action_57 (11) = happyGoto action_7
action_57 (14) = happyGoto action_8
action_57 (16) = happyGoto action_9
action_57 (17) = happyGoto action_10
action_57 (18) = happyGoto action_11
action_57 (19) = happyGoto action_12
action_57 (20) = happyGoto action_13
action_57 (21) = happyGoto action_14
action_57 _ = happyFail

action_58 (35) = happyShift action_15
action_58 (39) = happyShift action_16
action_58 (40) = happyShift action_17
action_58 (43) = happyShift action_18
action_58 (44) = happyShift action_19
action_58 (47) = happyShift action_20
action_58 (60) = happyShift action_21
action_58 (67) = happyShift action_22
action_58 (72) = happyShift action_23
action_58 (73) = happyShift action_24
action_58 (74) = happyShift action_25
action_58 (5) = happyGoto action_73
action_58 (6) = happyGoto action_3
action_58 (7) = happyGoto action_4
action_58 (8) = happyGoto action_5
action_58 (10) = happyGoto action_6
action_58 (11) = happyGoto action_7
action_58 (14) = happyGoto action_8
action_58 (16) = happyGoto action_9
action_58 (17) = happyGoto action_10
action_58 (18) = happyGoto action_11
action_58 (19) = happyGoto action_12
action_58 (20) = happyGoto action_13
action_58 (21) = happyGoto action_14
action_58 _ = happyFail

action_59 (35) = happyShift action_15
action_59 (39) = happyShift action_16
action_59 (40) = happyShift action_17
action_59 (43) = happyShift action_18
action_59 (44) = happyShift action_19
action_59 (47) = happyShift action_20
action_59 (60) = happyShift action_21
action_59 (67) = happyShift action_22
action_59 (72) = happyShift action_23
action_59 (73) = happyShift action_24
action_59 (74) = happyShift action_25
action_59 (5) = happyGoto action_72
action_59 (6) = happyGoto action_3
action_59 (7) = happyGoto action_4
action_59 (8) = happyGoto action_5
action_59 (10) = happyGoto action_6
action_59 (11) = happyGoto action_7
action_59 (14) = happyGoto action_8
action_59 (16) = happyGoto action_9
action_59 (17) = happyGoto action_10
action_59 (18) = happyGoto action_11
action_59 (19) = happyGoto action_12
action_59 (20) = happyGoto action_13
action_59 (21) = happyGoto action_14
action_59 _ = happyFail

action_60 _ = happyReduce_29

action_61 (68) = happyShift action_70
action_61 (71) = happyShift action_71
action_61 _ = happyFail

action_62 (66) = happyShift action_69
action_62 _ = happyFail

action_63 (64) = happyShift action_67
action_63 (71) = happyShift action_68
action_63 _ = happyFail

action_64 (57) = happyShift action_66
action_64 _ = happyFail

action_65 _ = happyReduce_19

action_66 (35) = happyShift action_15
action_66 (39) = happyShift action_16
action_66 (40) = happyShift action_17
action_66 (43) = happyShift action_18
action_66 (44) = happyShift action_19
action_66 (47) = happyShift action_20
action_66 (60) = happyShift action_21
action_66 (67) = happyShift action_22
action_66 (72) = happyShift action_23
action_66 (73) = happyShift action_24
action_66 (74) = happyShift action_25
action_66 (5) = happyGoto action_100
action_66 (6) = happyGoto action_3
action_66 (7) = happyGoto action_4
action_66 (8) = happyGoto action_5
action_66 (10) = happyGoto action_6
action_66 (11) = happyGoto action_7
action_66 (14) = happyGoto action_8
action_66 (16) = happyGoto action_9
action_66 (17) = happyGoto action_10
action_66 (18) = happyGoto action_11
action_66 (19) = happyGoto action_12
action_66 (20) = happyGoto action_13
action_66 (21) = happyGoto action_14
action_66 _ = happyFail

action_67 _ = happyReduce_32

action_68 (74) = happyShift action_99
action_68 _ = happyFail

action_69 (36) = happyShift action_98
action_69 _ = happyReduce_21

action_70 _ = happyReduce_27

action_71 (35) = happyShift action_15
action_71 (39) = happyShift action_16
action_71 (40) = happyShift action_17
action_71 (43) = happyShift action_18
action_71 (44) = happyShift action_19
action_71 (47) = happyShift action_20
action_71 (60) = happyShift action_21
action_71 (67) = happyShift action_22
action_71 (72) = happyShift action_23
action_71 (73) = happyShift action_24
action_71 (74) = happyShift action_25
action_71 (5) = happyGoto action_97
action_71 (6) = happyGoto action_3
action_71 (7) = happyGoto action_4
action_71 (8) = happyGoto action_5
action_71 (10) = happyGoto action_6
action_71 (11) = happyGoto action_7
action_71 (14) = happyGoto action_8
action_71 (16) = happyGoto action_9
action_71 (17) = happyGoto action_10
action_71 (18) = happyGoto action_11
action_71 (19) = happyGoto action_12
action_71 (20) = happyGoto action_13
action_71 (21) = happyGoto action_14
action_71 _ = happyFail

action_72 (9) = happyGoto action_96
action_72 _ = happyReduce_24

action_73 (45) = happyShift action_95
action_73 _ = happyReduce_39

action_74 _ = happyReduce_40

action_75 (42) = happyShift action_94
action_75 _ = happyFail

action_76 _ = happyReduce_44

action_77 (37) = happyShift action_92
action_77 (69) = happyShift action_93
action_77 _ = happyFail

action_78 (48) = happyShift action_89
action_78 (63) = happyShift action_90
action_78 (74) = happyShift action_91
action_78 (28) = happyGoto action_88
action_78 _ = happyFail

action_79 (35) = happyShift action_15
action_79 (39) = happyShift action_16
action_79 (40) = happyShift action_17
action_79 (43) = happyShift action_18
action_79 (44) = happyShift action_19
action_79 (47) = happyShift action_20
action_79 (60) = happyShift action_21
action_79 (67) = happyShift action_22
action_79 (72) = happyShift action_23
action_79 (73) = happyShift action_24
action_79 (74) = happyShift action_25
action_79 (5) = happyGoto action_87
action_79 (6) = happyGoto action_3
action_79 (7) = happyGoto action_4
action_79 (8) = happyGoto action_5
action_79 (10) = happyGoto action_6
action_79 (11) = happyGoto action_7
action_79 (14) = happyGoto action_8
action_79 (16) = happyGoto action_9
action_79 (17) = happyGoto action_10
action_79 (18) = happyGoto action_11
action_79 (19) = happyGoto action_12
action_79 (20) = happyGoto action_13
action_79 (21) = happyGoto action_14
action_79 _ = happyFail

action_80 (74) = happyShift action_86
action_80 _ = happyFail

action_81 (74) = happyShift action_85
action_81 (29) = happyGoto action_83
action_81 (30) = happyGoto action_84
action_81 _ = happyReduce_59

action_82 _ = happyReduce_22

action_83 (68) = happyShift action_113
action_83 _ = happyFail

action_84 (71) = happyShift action_112
action_84 _ = happyReduce_60

action_85 (70) = happyShift action_111
action_85 _ = happyFail

action_86 (49) = happyShift action_110
action_86 _ = happyFail

action_87 _ = happyReduce_63

action_88 _ = happyReduce_55

action_89 (36) = happyShift action_109
action_89 _ = happyFail

action_90 (74) = happyShift action_85
action_90 (29) = happyGoto action_108
action_90 (30) = happyGoto action_84
action_90 _ = happyReduce_59

action_91 _ = happyReduce_56

action_92 _ = happyReduce_42

action_93 (35) = happyShift action_15
action_93 (39) = happyShift action_16
action_93 (40) = happyShift action_17
action_93 (43) = happyShift action_18
action_93 (44) = happyShift action_19
action_93 (47) = happyShift action_20
action_93 (60) = happyShift action_21
action_93 (67) = happyShift action_22
action_93 (72) = happyShift action_23
action_93 (73) = happyShift action_24
action_93 (74) = happyShift action_25
action_93 (5) = happyGoto action_107
action_93 (6) = happyGoto action_3
action_93 (7) = happyGoto action_4
action_93 (8) = happyGoto action_5
action_93 (10) = happyGoto action_6
action_93 (11) = happyGoto action_7
action_93 (14) = happyGoto action_8
action_93 (16) = happyGoto action_9
action_93 (17) = happyGoto action_10
action_93 (18) = happyGoto action_11
action_93 (19) = happyGoto action_12
action_93 (20) = happyGoto action_13
action_93 (21) = happyGoto action_14
action_93 _ = happyFail

action_94 (35) = happyShift action_15
action_94 (39) = happyShift action_16
action_94 (40) = happyShift action_17
action_94 (43) = happyShift action_18
action_94 (44) = happyShift action_19
action_94 (47) = happyShift action_20
action_94 (60) = happyShift action_21
action_94 (67) = happyShift action_22
action_94 (72) = happyShift action_23
action_94 (73) = happyShift action_24
action_94 (74) = happyShift action_25
action_94 (5) = happyGoto action_106
action_94 (6) = happyGoto action_3
action_94 (7) = happyGoto action_4
action_94 (8) = happyGoto action_5
action_94 (10) = happyGoto action_6
action_94 (11) = happyGoto action_7
action_94 (14) = happyGoto action_8
action_94 (16) = happyGoto action_9
action_94 (17) = happyGoto action_10
action_94 (18) = happyGoto action_11
action_94 (19) = happyGoto action_12
action_94 (20) = happyGoto action_13
action_94 (21) = happyGoto action_14
action_94 _ = happyFail

action_95 (35) = happyShift action_15
action_95 (39) = happyShift action_16
action_95 (40) = happyShift action_17
action_95 (43) = happyShift action_18
action_95 (44) = happyShift action_19
action_95 (47) = happyShift action_20
action_95 (60) = happyShift action_21
action_95 (67) = happyShift action_22
action_95 (72) = happyShift action_23
action_95 (73) = happyShift action_24
action_95 (74) = happyShift action_25
action_95 (5) = happyGoto action_105
action_95 (6) = happyGoto action_3
action_95 (7) = happyGoto action_4
action_95 (8) = happyGoto action_5
action_95 (10) = happyGoto action_6
action_95 (11) = happyGoto action_7
action_95 (14) = happyGoto action_8
action_95 (16) = happyGoto action_9
action_95 (17) = happyGoto action_10
action_95 (18) = happyGoto action_11
action_95 (19) = happyGoto action_12
action_95 (20) = happyGoto action_13
action_95 (21) = happyGoto action_14
action_95 _ = happyFail

action_96 (68) = happyShift action_103
action_96 (69) = happyShift action_104
action_96 _ = happyFail

action_97 _ = happyReduce_30

action_98 (35) = happyShift action_15
action_98 (39) = happyShift action_16
action_98 (40) = happyShift action_17
action_98 (43) = happyShift action_18
action_98 (44) = happyShift action_19
action_98 (47) = happyShift action_20
action_98 (60) = happyShift action_21
action_98 (67) = happyShift action_22
action_98 (72) = happyShift action_23
action_98 (73) = happyShift action_24
action_98 (74) = happyShift action_25
action_98 (5) = happyGoto action_102
action_98 (6) = happyGoto action_3
action_98 (7) = happyGoto action_4
action_98 (8) = happyGoto action_5
action_98 (10) = happyGoto action_6
action_98 (11) = happyGoto action_7
action_98 (14) = happyGoto action_8
action_98 (16) = happyGoto action_9
action_98 (17) = happyGoto action_10
action_98 (18) = happyGoto action_11
action_98 (19) = happyGoto action_12
action_98 (20) = happyGoto action_13
action_98 (21) = happyGoto action_14
action_98 _ = happyFail

action_99 (57) = happyShift action_101
action_99 _ = happyFail

action_100 _ = happyReduce_34

action_101 (35) = happyShift action_15
action_101 (39) = happyShift action_16
action_101 (40) = happyShift action_17
action_101 (43) = happyShift action_18
action_101 (44) = happyShift action_19
action_101 (47) = happyShift action_20
action_101 (60) = happyShift action_21
action_101 (67) = happyShift action_22
action_101 (72) = happyShift action_23
action_101 (73) = happyShift action_24
action_101 (74) = happyShift action_25
action_101 (5) = happyGoto action_123
action_101 (6) = happyGoto action_3
action_101 (7) = happyGoto action_4
action_101 (8) = happyGoto action_5
action_101 (10) = happyGoto action_6
action_101 (11) = happyGoto action_7
action_101 (14) = happyGoto action_8
action_101 (16) = happyGoto action_9
action_101 (17) = happyGoto action_10
action_101 (18) = happyGoto action_11
action_101 (19) = happyGoto action_12
action_101 (20) = happyGoto action_13
action_101 (21) = happyGoto action_14
action_101 _ = happyFail

action_102 _ = happyReduce_36

action_103 _ = happyReduce_23

action_104 (35) = happyShift action_15
action_104 (39) = happyShift action_16
action_104 (40) = happyShift action_17
action_104 (43) = happyShift action_18
action_104 (44) = happyShift action_19
action_104 (47) = happyShift action_20
action_104 (60) = happyShift action_21
action_104 (67) = happyShift action_22
action_104 (72) = happyShift action_23
action_104 (73) = happyShift action_24
action_104 (74) = happyShift action_25
action_104 (5) = happyGoto action_122
action_104 (6) = happyGoto action_3
action_104 (7) = happyGoto action_4
action_104 (8) = happyGoto action_5
action_104 (10) = happyGoto action_6
action_104 (11) = happyGoto action_7
action_104 (14) = happyGoto action_8
action_104 (16) = happyGoto action_9
action_104 (17) = happyGoto action_10
action_104 (18) = happyGoto action_11
action_104 (19) = happyGoto action_12
action_104 (20) = happyGoto action_13
action_104 (21) = happyGoto action_14
action_104 _ = happyFail

action_105 _ = happyReduce_38

action_106 (41) = happyShift action_121
action_106 _ = happyFail

action_107 _ = happyReduce_45

action_108 (64) = happyShift action_120
action_108 _ = happyFail

action_109 (74) = happyShift action_119
action_109 _ = happyFail

action_110 (35) = happyShift action_15
action_110 (39) = happyShift action_16
action_110 (40) = happyShift action_17
action_110 (43) = happyShift action_18
action_110 (44) = happyShift action_19
action_110 (47) = happyShift action_20
action_110 (60) = happyShift action_21
action_110 (67) = happyShift action_22
action_110 (72) = happyShift action_23
action_110 (73) = happyShift action_24
action_110 (74) = happyShift action_25
action_110 (5) = happyGoto action_118
action_110 (6) = happyGoto action_3
action_110 (7) = happyGoto action_4
action_110 (8) = happyGoto action_5
action_110 (10) = happyGoto action_6
action_110 (11) = happyGoto action_7
action_110 (14) = happyGoto action_8
action_110 (16) = happyGoto action_9
action_110 (17) = happyGoto action_10
action_110 (18) = happyGoto action_11
action_110 (19) = happyGoto action_12
action_110 (20) = happyGoto action_13
action_110 (21) = happyGoto action_14
action_110 _ = happyFail

action_111 (74) = happyShift action_117
action_111 _ = happyFail

action_112 (74) = happyShift action_116
action_112 _ = happyFail

action_113 (57) = happyShift action_114
action_113 (70) = happyShift action_115
action_113 _ = happyFail

action_114 (35) = happyShift action_15
action_114 (39) = happyShift action_16
action_114 (40) = happyShift action_17
action_114 (43) = happyShift action_18
action_114 (44) = happyShift action_19
action_114 (47) = happyShift action_20
action_114 (60) = happyShift action_21
action_114 (67) = happyShift action_22
action_114 (72) = happyShift action_23
action_114 (73) = happyShift action_24
action_114 (74) = happyShift action_25
action_114 (5) = happyGoto action_127
action_114 (6) = happyGoto action_3
action_114 (7) = happyGoto action_4
action_114 (8) = happyGoto action_5
action_114 (10) = happyGoto action_6
action_114 (11) = happyGoto action_7
action_114 (14) = happyGoto action_8
action_114 (16) = happyGoto action_9
action_114 (17) = happyGoto action_10
action_114 (18) = happyGoto action_11
action_114 (19) = happyGoto action_12
action_114 (20) = happyGoto action_13
action_114 (21) = happyGoto action_14
action_114 _ = happyFail

action_115 (74) = happyShift action_126
action_115 _ = happyFail

action_116 (70) = happyShift action_125
action_116 _ = happyFail

action_117 _ = happyReduce_61

action_118 _ = happyReduce_64

action_119 _ = happyReduce_58

action_120 _ = happyReduce_57

action_121 (35) = happyShift action_15
action_121 (39) = happyShift action_16
action_121 (40) = happyShift action_17
action_121 (43) = happyShift action_18
action_121 (44) = happyShift action_19
action_121 (47) = happyShift action_20
action_121 (60) = happyShift action_21
action_121 (67) = happyShift action_22
action_121 (72) = happyShift action_23
action_121 (73) = happyShift action_24
action_121 (74) = happyShift action_25
action_121 (5) = happyGoto action_124
action_121 (6) = happyGoto action_3
action_121 (7) = happyGoto action_4
action_121 (8) = happyGoto action_5
action_121 (10) = happyGoto action_6
action_121 (11) = happyGoto action_7
action_121 (14) = happyGoto action_8
action_121 (16) = happyGoto action_9
action_121 (17) = happyGoto action_10
action_121 (18) = happyGoto action_11
action_121 (19) = happyGoto action_12
action_121 (20) = happyGoto action_13
action_121 (21) = happyGoto action_14
action_121 _ = happyFail

action_122 _ = happyReduce_25

action_123 _ = happyReduce_35

action_124 _ = happyReduce_41

action_125 (74) = happyShift action_129
action_125 _ = happyFail

action_126 (57) = happyShift action_128
action_126 _ = happyFail

action_127 _ = happyReduce_53

action_128 (35) = happyShift action_15
action_128 (39) = happyShift action_16
action_128 (40) = happyShift action_17
action_128 (43) = happyShift action_18
action_128 (44) = happyShift action_19
action_128 (47) = happyShift action_20
action_128 (60) = happyShift action_21
action_128 (67) = happyShift action_22
action_128 (72) = happyShift action_23
action_128 (73) = happyShift action_24
action_128 (74) = happyShift action_25
action_128 (5) = happyGoto action_130
action_128 (6) = happyGoto action_3
action_128 (7) = happyGoto action_4
action_128 (8) = happyGoto action_5
action_128 (10) = happyGoto action_6
action_128 (11) = happyGoto action_7
action_128 (14) = happyGoto action_8
action_128 (16) = happyGoto action_9
action_128 (17) = happyGoto action_10
action_128 (18) = happyGoto action_11
action_128 (19) = happyGoto action_12
action_128 (20) = happyGoto action_13
action_128 (21) = happyGoto action_14
action_128 _ = happyFail

action_129 _ = happyReduce_62

action_130 _ = happyReduce_54

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.LVal happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn5
		 (AST.Nil
	)

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyTerminal (IntToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.IntLit happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyTerminal (StringToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.StringLit happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn5
		 (AST.Break
	)

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn6
		 (AST.Var happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn7
		 (AST.RecField (AST.Var happy_var_1) happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 7 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.ArrSubscript (AST.Var happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 4 7 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 6 8 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (AST.Seq (happy_var_2 : happy_var_4 : reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_0  9 happyReduction_24
happyReduction_24  =  HappyAbsSyn9
		 ([]
	)

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  10 happyReduction_26
happyReduction_26 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn10
		 (AST.Neg happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 11 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_0  12 happyReduction_28
happyReduction_28  =  HappyAbsSyn12
		 ([]
	)

happyReduce_29 = happySpecReduce_1  12 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 _
	_
	_
	 =  HappyAbsSyn13
		 (
	)

happyReduce_32 = happyReduce 4 14 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_0  15 happyReduction_33
happyReduction_33  =  HappyAbsSyn15
		 ([]
	)

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn15
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 5 15 happyReduction_35
happyReduction_35 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 6 16 happyReduction_36
happyReduction_36 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  17 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn17
		 (AST.Assign happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 6 18 happyReduction_38
happyReduction_38 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.Branch happy_var_2 happy_var_4 (Just happy_var_6)
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 18 happyReduction_39
happyReduction_39 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.Branch happy_var_2 happy_var_4 Nothing
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 19 happyReduction_40
happyReduction_40 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 8 20 happyReduction_41
happyReduction_41 ((HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.For happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 21 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn22  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.Let happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_0  22 happyReduction_43
happyReduction_43  =  HappyAbsSyn22
		 ([]
	)

happyReduce_44 = happySpecReduce_1  22 happyReduction_44
happyReduction_44 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn22
		 ([happy_var_1]
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  22 happyReduction_45
happyReduction_45 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_3 : happy_var_1
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

happyReduce_48 = happySpecReduce_1  24 happyReduction_48
happyReduction_48 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  24 happyReduction_49
happyReduction_49 (HappyAbsSyn25  happy_var_2)
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_2 : happy_var_1
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  25 happyReduction_50
happyReduction_50 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn25
		 (AST.TDec happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  25 happyReduction_51
happyReduction_51 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn25
		 (AST.VDec happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  25 happyReduction_52
happyReduction_52 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn25
		 (AST.FDec happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happyReduce 7 26 happyReduction_53
happyReduction_53 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn29  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 9 26 happyReduction_54
happyReduction_54 ((HappyAbsSyn5  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn29  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn26
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 4 27 happyReduction_55
happyReduction_55 ((HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_56 = happySpecReduce_1  28 happyReduction_56
happyReduction_56 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn28
		 (AST.Type happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  28 happyReduction_57
happyReduction_57 _
	(HappyAbsSyn29  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (AST.Record happy_var_2
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  28 happyReduction_58
happyReduction_58 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn28
		 (AST.Array happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_0  29 happyReduction_59
happyReduction_59  =  HappyAbsSyn29
		 ([]
	)

happyReduce_60 = happySpecReduce_1  29 happyReduction_60
happyReduction_60 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (reverse happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  30 happyReduction_61
happyReduction_61 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn30
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happyReduce 5 30 happyReduction_62
happyReduction_62 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 4 31 happyReduction_63
happyReduction_63 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_64 = happyReduce 6 31 happyReduction_64
happyReduction_64 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 76 76 tk (HappyState action) sts stk;
	TypeToken -> cont 32;
	VarToken -> cont 33;
	FunctionToken -> cont 34;
	BreakToken -> cont 35;
	OfToken -> cont 36;
	EndToken -> cont 37;
	InToken -> cont 38;
	NilToken -> cont 39;
	LetToken -> cont 40;
	DoToken -> cont 41;
	ToToken -> cont 42;
	ForToken -> cont 43;
	WhileToken -> cont 44;
	ElseToken -> cont 45;
	ThenToken -> cont 46;
	IfToken -> cont 47;
	ArrayToken -> cont 48;
	AssignToken -> cont 49;
	OrToken -> cont 50;
	AndToken -> cont 51;
	GeToken -> cont 52;
	GtToken -> cont 53;
	LeToken -> cont 54;
	LtToken -> cont 55;
	NeqToken -> cont 56;
	EqToken -> cont 57;
	DivideToken -> cont 58;
	TimesToken -> cont 59;
	MinusToken -> cont 60;
	PlusToken -> cont 61;
	DotToken -> cont 62;
	LbraceToken -> cont 63;
	RbraceToken -> cont 64;
	LbrackToken -> cont 65;
	RbrackToken -> cont 66;
	LparenToken -> cont 67;
	RparenToken -> cont 68;
	SemicolonToken -> cont 69;
	ColonToken -> cont 70;
	CommaToken -> cont 71;
	StringToken happy_dollar_dollar -> cont 72;
	IntToken happy_dollar_dollar -> cont 73;
	IdToken happy_dollar_dollar -> cont 74;
	EofToken -> cont 75;
	_ -> happyError' tk
	})

happyError_ 76 tk = happyError' tk
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
