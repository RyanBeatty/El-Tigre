{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29
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

action_0 (33) = happyShift action_14
action_0 (37) = happyShift action_15
action_0 (38) = happyShift action_16
action_0 (41) = happyShift action_17
action_0 (42) = happyShift action_18
action_0 (58) = happyShift action_19
action_0 (65) = happyShift action_20
action_0 (70) = happyShift action_21
action_0 (71) = happyShift action_22
action_0 (72) = happyShift action_23
action_0 (4) = happyGoto action_24
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (10) = happyGoto action_6
action_0 (11) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 (15) = happyGoto action_9
action_0 (16) = happyGoto action_10
action_0 (17) = happyGoto action_11
action_0 (18) = happyGoto action_12
action_0 (19) = happyGoto action_13
action_0 _ = happyFail

action_1 (33) = happyShift action_14
action_1 (37) = happyShift action_15
action_1 (38) = happyShift action_16
action_1 (41) = happyShift action_17
action_1 (42) = happyShift action_18
action_1 (58) = happyShift action_19
action_1 (65) = happyShift action_20
action_1 (70) = happyShift action_21
action_1 (71) = happyShift action_22
action_1 (72) = happyShift action_23
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (10) = happyGoto action_6
action_1 (11) = happyGoto action_7
action_1 (13) = happyGoto action_8
action_1 (15) = happyGoto action_9
action_1 (16) = happyGoto action_10
action_1 (17) = happyGoto action_11
action_1 (18) = happyGoto action_12
action_1 (19) = happyGoto action_13
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (47) = happyShift action_44
action_3 _ = happyReduce_2

action_4 (60) = happyShift action_42
action_4 (63) = happyShift action_43
action_4 _ = happyReduce_17

action_5 _ = happyReduce_4

action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 _ = happyReduce_9

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_13

action_13 _ = happyReduce_15

action_14 _ = happyReduce_14

action_15 _ = happyReduce_3

action_16 (30) = happyShift action_39
action_16 (31) = happyShift action_40
action_16 (32) = happyShift action_41
action_16 (21) = happyGoto action_33
action_16 (22) = happyGoto action_34
action_16 (23) = happyGoto action_35
action_16 (24) = happyGoto action_36
action_16 (25) = happyGoto action_37
action_16 (29) = happyGoto action_38
action_16 _ = happyReduce_42

action_17 (72) = happyShift action_32
action_17 _ = happyFail

action_18 (33) = happyShift action_14
action_18 (37) = happyShift action_15
action_18 (38) = happyShift action_16
action_18 (41) = happyShift action_17
action_18 (42) = happyShift action_18
action_18 (58) = happyShift action_19
action_18 (65) = happyShift action_20
action_18 (70) = happyShift action_21
action_18 (71) = happyShift action_22
action_18 (72) = happyShift action_23
action_18 (5) = happyGoto action_31
action_18 (6) = happyGoto action_3
action_18 (7) = happyGoto action_4
action_18 (8) = happyGoto action_5
action_18 (10) = happyGoto action_6
action_18 (11) = happyGoto action_7
action_18 (13) = happyGoto action_8
action_18 (15) = happyGoto action_9
action_18 (16) = happyGoto action_10
action_18 (17) = happyGoto action_11
action_18 (18) = happyGoto action_12
action_18 (19) = happyGoto action_13
action_18 _ = happyFail

action_19 (71) = happyShift action_30
action_19 _ = happyFail

action_20 (33) = happyShift action_14
action_20 (37) = happyShift action_15
action_20 (38) = happyShift action_16
action_20 (41) = happyShift action_17
action_20 (42) = happyShift action_18
action_20 (58) = happyShift action_19
action_20 (65) = happyShift action_20
action_20 (70) = happyShift action_21
action_20 (71) = happyShift action_22
action_20 (72) = happyShift action_23
action_20 (5) = happyGoto action_29
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_4
action_20 (8) = happyGoto action_5
action_20 (10) = happyGoto action_6
action_20 (11) = happyGoto action_7
action_20 (13) = happyGoto action_8
action_20 (15) = happyGoto action_9
action_20 (16) = happyGoto action_10
action_20 (17) = happyGoto action_11
action_20 (18) = happyGoto action_12
action_20 (19) = happyGoto action_13
action_20 _ = happyFail

action_21 _ = happyReduce_6

action_22 _ = happyReduce_5

action_23 (60) = happyShift action_25
action_23 (61) = happyShift action_26
action_23 (63) = happyShift action_27
action_23 (65) = happyShift action_28
action_23 _ = happyReduce_16

action_24 (74) = happyAccept
action_24 _ = happyFail

action_25 (72) = happyShift action_61
action_25 _ = happyFail

action_26 (72) = happyShift action_60
action_26 (14) = happyGoto action_59
action_26 _ = happyReduce_31

action_27 (33) = happyShift action_14
action_27 (37) = happyShift action_15
action_27 (38) = happyShift action_16
action_27 (41) = happyShift action_17
action_27 (42) = happyShift action_18
action_27 (58) = happyShift action_19
action_27 (65) = happyShift action_20
action_27 (70) = happyShift action_21
action_27 (71) = happyShift action_22
action_27 (72) = happyShift action_23
action_27 (5) = happyGoto action_58
action_27 (6) = happyGoto action_3
action_27 (7) = happyGoto action_4
action_27 (8) = happyGoto action_5
action_27 (10) = happyGoto action_6
action_27 (11) = happyGoto action_7
action_27 (13) = happyGoto action_8
action_27 (15) = happyGoto action_9
action_27 (16) = happyGoto action_10
action_27 (17) = happyGoto action_11
action_27 (18) = happyGoto action_12
action_27 (19) = happyGoto action_13
action_27 _ = happyFail

action_28 (33) = happyShift action_14
action_28 (37) = happyShift action_15
action_28 (38) = happyShift action_16
action_28 (41) = happyShift action_17
action_28 (42) = happyShift action_18
action_28 (58) = happyShift action_19
action_28 (65) = happyShift action_20
action_28 (70) = happyShift action_21
action_28 (71) = happyShift action_22
action_28 (72) = happyShift action_23
action_28 (5) = happyGoto action_56
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_4
action_28 (8) = happyGoto action_5
action_28 (10) = happyGoto action_6
action_28 (11) = happyGoto action_7
action_28 (12) = happyGoto action_57
action_28 (13) = happyGoto action_8
action_28 (15) = happyGoto action_9
action_28 (16) = happyGoto action_10
action_28 (17) = happyGoto action_11
action_28 (18) = happyGoto action_12
action_28 (19) = happyGoto action_13
action_28 _ = happyReduce_27

action_29 (67) = happyShift action_55
action_29 _ = happyFail

action_30 _ = happyReduce_25

action_31 (39) = happyShift action_54
action_31 _ = happyFail

action_32 (47) = happyShift action_53
action_32 _ = happyFail

action_33 (36) = happyShift action_52
action_33 _ = happyFail

action_34 (30) = happyShift action_39
action_34 (31) = happyShift action_40
action_34 (32) = happyShift action_41
action_34 (23) = happyGoto action_51
action_34 (24) = happyGoto action_36
action_34 (25) = happyGoto action_37
action_34 (29) = happyGoto action_38
action_34 _ = happyReduce_43

action_35 _ = happyReduce_44

action_36 _ = happyReduce_48

action_37 _ = happyReduce_46

action_38 _ = happyReduce_47

action_39 (72) = happyShift action_50
action_39 _ = happyFail

action_40 (72) = happyShift action_49
action_40 _ = happyFail

action_41 (72) = happyShift action_48
action_41 _ = happyFail

action_42 (72) = happyShift action_47
action_42 _ = happyFail

action_43 (33) = happyShift action_14
action_43 (37) = happyShift action_15
action_43 (38) = happyShift action_16
action_43 (41) = happyShift action_17
action_43 (42) = happyShift action_18
action_43 (58) = happyShift action_19
action_43 (65) = happyShift action_20
action_43 (70) = happyShift action_21
action_43 (71) = happyShift action_22
action_43 (72) = happyShift action_23
action_43 (5) = happyGoto action_46
action_43 (6) = happyGoto action_3
action_43 (7) = happyGoto action_4
action_43 (8) = happyGoto action_5
action_43 (10) = happyGoto action_6
action_43 (11) = happyGoto action_7
action_43 (13) = happyGoto action_8
action_43 (15) = happyGoto action_9
action_43 (16) = happyGoto action_10
action_43 (17) = happyGoto action_11
action_43 (18) = happyGoto action_12
action_43 (19) = happyGoto action_13
action_43 _ = happyFail

action_44 (33) = happyShift action_14
action_44 (37) = happyShift action_15
action_44 (38) = happyShift action_16
action_44 (41) = happyShift action_17
action_44 (42) = happyShift action_18
action_44 (58) = happyShift action_19
action_44 (65) = happyShift action_20
action_44 (70) = happyShift action_21
action_44 (71) = happyShift action_22
action_44 (72) = happyShift action_23
action_44 (5) = happyGoto action_45
action_44 (6) = happyGoto action_3
action_44 (7) = happyGoto action_4
action_44 (8) = happyGoto action_5
action_44 (10) = happyGoto action_6
action_44 (11) = happyGoto action_7
action_44 (13) = happyGoto action_8
action_44 (15) = happyGoto action_9
action_44 (16) = happyGoto action_10
action_44 (17) = happyGoto action_11
action_44 (18) = happyGoto action_12
action_44 (19) = happyGoto action_13
action_44 _ = happyFail

action_45 _ = happyReduce_35

action_46 (64) = happyShift action_77
action_46 _ = happyFail

action_47 _ = happyReduce_19

action_48 (65) = happyShift action_76
action_48 _ = happyFail

action_49 (47) = happyShift action_74
action_49 (68) = happyShift action_75
action_49 _ = happyFail

action_50 (55) = happyShift action_73
action_50 _ = happyFail

action_51 _ = happyReduce_45

action_52 (33) = happyShift action_14
action_52 (37) = happyShift action_15
action_52 (38) = happyShift action_16
action_52 (41) = happyShift action_17
action_52 (42) = happyShift action_18
action_52 (58) = happyShift action_19
action_52 (65) = happyShift action_20
action_52 (70) = happyShift action_21
action_52 (71) = happyShift action_22
action_52 (72) = happyShift action_23
action_52 (5) = happyGoto action_71
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_4
action_52 (8) = happyGoto action_5
action_52 (10) = happyGoto action_6
action_52 (11) = happyGoto action_7
action_52 (13) = happyGoto action_8
action_52 (15) = happyGoto action_9
action_52 (16) = happyGoto action_10
action_52 (17) = happyGoto action_11
action_52 (18) = happyGoto action_12
action_52 (19) = happyGoto action_13
action_52 (20) = happyGoto action_72
action_52 _ = happyReduce_39

action_53 (33) = happyShift action_14
action_53 (37) = happyShift action_15
action_53 (38) = happyShift action_16
action_53 (41) = happyShift action_17
action_53 (42) = happyShift action_18
action_53 (58) = happyShift action_19
action_53 (65) = happyShift action_20
action_53 (70) = happyShift action_21
action_53 (71) = happyShift action_22
action_53 (72) = happyShift action_23
action_53 (5) = happyGoto action_70
action_53 (6) = happyGoto action_3
action_53 (7) = happyGoto action_4
action_53 (8) = happyGoto action_5
action_53 (10) = happyGoto action_6
action_53 (11) = happyGoto action_7
action_53 (13) = happyGoto action_8
action_53 (15) = happyGoto action_9
action_53 (16) = happyGoto action_10
action_53 (17) = happyGoto action_11
action_53 (18) = happyGoto action_12
action_53 (19) = happyGoto action_13
action_53 _ = happyFail

action_54 (33) = happyShift action_14
action_54 (37) = happyShift action_15
action_54 (38) = happyShift action_16
action_54 (41) = happyShift action_17
action_54 (42) = happyShift action_18
action_54 (58) = happyShift action_19
action_54 (65) = happyShift action_20
action_54 (70) = happyShift action_21
action_54 (71) = happyShift action_22
action_54 (72) = happyShift action_23
action_54 (5) = happyGoto action_69
action_54 (6) = happyGoto action_3
action_54 (7) = happyGoto action_4
action_54 (8) = happyGoto action_5
action_54 (10) = happyGoto action_6
action_54 (11) = happyGoto action_7
action_54 (13) = happyGoto action_8
action_54 (15) = happyGoto action_9
action_54 (16) = happyGoto action_10
action_54 (17) = happyGoto action_11
action_54 (18) = happyGoto action_12
action_54 (19) = happyGoto action_13
action_54 _ = happyFail

action_55 (33) = happyShift action_14
action_55 (37) = happyShift action_15
action_55 (38) = happyShift action_16
action_55 (41) = happyShift action_17
action_55 (42) = happyShift action_18
action_55 (58) = happyShift action_19
action_55 (65) = happyShift action_20
action_55 (70) = happyShift action_21
action_55 (71) = happyShift action_22
action_55 (72) = happyShift action_23
action_55 (5) = happyGoto action_68
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_4
action_55 (8) = happyGoto action_5
action_55 (10) = happyGoto action_6
action_55 (11) = happyGoto action_7
action_55 (13) = happyGoto action_8
action_55 (15) = happyGoto action_9
action_55 (16) = happyGoto action_10
action_55 (17) = happyGoto action_11
action_55 (18) = happyGoto action_12
action_55 (19) = happyGoto action_13
action_55 _ = happyFail

action_56 _ = happyReduce_28

action_57 (66) = happyShift action_66
action_57 (69) = happyShift action_67
action_57 _ = happyFail

action_58 (64) = happyShift action_65
action_58 _ = happyFail

action_59 (62) = happyShift action_63
action_59 (69) = happyShift action_64
action_59 _ = happyFail

action_60 (55) = happyShift action_62
action_60 _ = happyFail

action_61 _ = happyReduce_18

action_62 (33) = happyShift action_14
action_62 (37) = happyShift action_15
action_62 (38) = happyShift action_16
action_62 (41) = happyShift action_17
action_62 (42) = happyShift action_18
action_62 (58) = happyShift action_19
action_62 (65) = happyShift action_20
action_62 (70) = happyShift action_21
action_62 (71) = happyShift action_22
action_62 (72) = happyShift action_23
action_62 (5) = happyGoto action_94
action_62 (6) = happyGoto action_3
action_62 (7) = happyGoto action_4
action_62 (8) = happyGoto action_5
action_62 (10) = happyGoto action_6
action_62 (11) = happyGoto action_7
action_62 (13) = happyGoto action_8
action_62 (15) = happyGoto action_9
action_62 (16) = happyGoto action_10
action_62 (17) = happyGoto action_11
action_62 (18) = happyGoto action_12
action_62 (19) = happyGoto action_13
action_62 _ = happyFail

action_63 _ = happyReduce_30

action_64 (72) = happyShift action_93
action_64 _ = happyFail

action_65 (34) = happyShift action_92
action_65 _ = happyReduce_20

action_66 _ = happyReduce_26

action_67 (33) = happyShift action_14
action_67 (37) = happyShift action_15
action_67 (38) = happyShift action_16
action_67 (41) = happyShift action_17
action_67 (42) = happyShift action_18
action_67 (58) = happyShift action_19
action_67 (65) = happyShift action_20
action_67 (70) = happyShift action_21
action_67 (71) = happyShift action_22
action_67 (72) = happyShift action_23
action_67 (5) = happyGoto action_91
action_67 (6) = happyGoto action_3
action_67 (7) = happyGoto action_4
action_67 (8) = happyGoto action_5
action_67 (10) = happyGoto action_6
action_67 (11) = happyGoto action_7
action_67 (13) = happyGoto action_8
action_67 (15) = happyGoto action_9
action_67 (16) = happyGoto action_10
action_67 (17) = happyGoto action_11
action_67 (18) = happyGoto action_12
action_67 (19) = happyGoto action_13
action_67 _ = happyFail

action_68 (9) = happyGoto action_90
action_68 _ = happyReduce_23

action_69 _ = happyReduce_36

action_70 (40) = happyShift action_89
action_70 _ = happyFail

action_71 _ = happyReduce_40

action_72 (35) = happyShift action_87
action_72 (67) = happyShift action_88
action_72 _ = happyFail

action_73 (46) = happyShift action_84
action_73 (61) = happyShift action_85
action_73 (72) = happyShift action_86
action_73 (26) = happyGoto action_83
action_73 _ = happyFail

action_74 (33) = happyShift action_14
action_74 (37) = happyShift action_15
action_74 (38) = happyShift action_16
action_74 (41) = happyShift action_17
action_74 (42) = happyShift action_18
action_74 (58) = happyShift action_19
action_74 (65) = happyShift action_20
action_74 (70) = happyShift action_21
action_74 (71) = happyShift action_22
action_74 (72) = happyShift action_23
action_74 (5) = happyGoto action_82
action_74 (6) = happyGoto action_3
action_74 (7) = happyGoto action_4
action_74 (8) = happyGoto action_5
action_74 (10) = happyGoto action_6
action_74 (11) = happyGoto action_7
action_74 (13) = happyGoto action_8
action_74 (15) = happyGoto action_9
action_74 (16) = happyGoto action_10
action_74 (17) = happyGoto action_11
action_74 (18) = happyGoto action_12
action_74 (19) = happyGoto action_13
action_74 _ = happyFail

action_75 (72) = happyShift action_81
action_75 _ = happyFail

action_76 (72) = happyShift action_80
action_76 (27) = happyGoto action_78
action_76 (28) = happyGoto action_79
action_76 _ = happyReduce_55

action_77 _ = happyReduce_21

action_78 (66) = happyShift action_106
action_78 _ = happyFail

action_79 (69) = happyShift action_105
action_79 _ = happyReduce_56

action_80 (68) = happyShift action_104
action_80 _ = happyFail

action_81 (47) = happyShift action_103
action_81 _ = happyFail

action_82 _ = happyReduce_59

action_83 _ = happyReduce_51

action_84 (34) = happyShift action_102
action_84 _ = happyFail

action_85 (72) = happyShift action_80
action_85 (27) = happyGoto action_101
action_85 (28) = happyGoto action_79
action_85 _ = happyReduce_55

action_86 _ = happyReduce_52

action_87 _ = happyReduce_38

action_88 (33) = happyShift action_14
action_88 (37) = happyShift action_15
action_88 (38) = happyShift action_16
action_88 (41) = happyShift action_17
action_88 (42) = happyShift action_18
action_88 (58) = happyShift action_19
action_88 (65) = happyShift action_20
action_88 (70) = happyShift action_21
action_88 (71) = happyShift action_22
action_88 (72) = happyShift action_23
action_88 (5) = happyGoto action_100
action_88 (6) = happyGoto action_3
action_88 (7) = happyGoto action_4
action_88 (8) = happyGoto action_5
action_88 (10) = happyGoto action_6
action_88 (11) = happyGoto action_7
action_88 (13) = happyGoto action_8
action_88 (15) = happyGoto action_9
action_88 (16) = happyGoto action_10
action_88 (17) = happyGoto action_11
action_88 (18) = happyGoto action_12
action_88 (19) = happyGoto action_13
action_88 _ = happyFail

action_89 (33) = happyShift action_14
action_89 (37) = happyShift action_15
action_89 (38) = happyShift action_16
action_89 (41) = happyShift action_17
action_89 (42) = happyShift action_18
action_89 (58) = happyShift action_19
action_89 (65) = happyShift action_20
action_89 (70) = happyShift action_21
action_89 (71) = happyShift action_22
action_89 (72) = happyShift action_23
action_89 (5) = happyGoto action_99
action_89 (6) = happyGoto action_3
action_89 (7) = happyGoto action_4
action_89 (8) = happyGoto action_5
action_89 (10) = happyGoto action_6
action_89 (11) = happyGoto action_7
action_89 (13) = happyGoto action_8
action_89 (15) = happyGoto action_9
action_89 (16) = happyGoto action_10
action_89 (17) = happyGoto action_11
action_89 (18) = happyGoto action_12
action_89 (19) = happyGoto action_13
action_89 _ = happyFail

action_90 (66) = happyShift action_97
action_90 (67) = happyShift action_98
action_90 _ = happyFail

action_91 _ = happyReduce_29

action_92 (33) = happyShift action_14
action_92 (37) = happyShift action_15
action_92 (38) = happyShift action_16
action_92 (41) = happyShift action_17
action_92 (42) = happyShift action_18
action_92 (58) = happyShift action_19
action_92 (65) = happyShift action_20
action_92 (70) = happyShift action_21
action_92 (71) = happyShift action_22
action_92 (72) = happyShift action_23
action_92 (5) = happyGoto action_96
action_92 (6) = happyGoto action_3
action_92 (7) = happyGoto action_4
action_92 (8) = happyGoto action_5
action_92 (10) = happyGoto action_6
action_92 (11) = happyGoto action_7
action_92 (13) = happyGoto action_8
action_92 (15) = happyGoto action_9
action_92 (16) = happyGoto action_10
action_92 (17) = happyGoto action_11
action_92 (18) = happyGoto action_12
action_92 (19) = happyGoto action_13
action_92 _ = happyFail

action_93 (55) = happyShift action_95
action_93 _ = happyFail

action_94 _ = happyReduce_32

action_95 (33) = happyShift action_14
action_95 (37) = happyShift action_15
action_95 (38) = happyShift action_16
action_95 (41) = happyShift action_17
action_95 (42) = happyShift action_18
action_95 (58) = happyShift action_19
action_95 (65) = happyShift action_20
action_95 (70) = happyShift action_21
action_95 (71) = happyShift action_22
action_95 (72) = happyShift action_23
action_95 (5) = happyGoto action_116
action_95 (6) = happyGoto action_3
action_95 (7) = happyGoto action_4
action_95 (8) = happyGoto action_5
action_95 (10) = happyGoto action_6
action_95 (11) = happyGoto action_7
action_95 (13) = happyGoto action_8
action_95 (15) = happyGoto action_9
action_95 (16) = happyGoto action_10
action_95 (17) = happyGoto action_11
action_95 (18) = happyGoto action_12
action_95 (19) = happyGoto action_13
action_95 _ = happyFail

action_96 _ = happyReduce_34

action_97 _ = happyReduce_22

action_98 (33) = happyShift action_14
action_98 (37) = happyShift action_15
action_98 (38) = happyShift action_16
action_98 (41) = happyShift action_17
action_98 (42) = happyShift action_18
action_98 (58) = happyShift action_19
action_98 (65) = happyShift action_20
action_98 (70) = happyShift action_21
action_98 (71) = happyShift action_22
action_98 (72) = happyShift action_23
action_98 (5) = happyGoto action_115
action_98 (6) = happyGoto action_3
action_98 (7) = happyGoto action_4
action_98 (8) = happyGoto action_5
action_98 (10) = happyGoto action_6
action_98 (11) = happyGoto action_7
action_98 (13) = happyGoto action_8
action_98 (15) = happyGoto action_9
action_98 (16) = happyGoto action_10
action_98 (17) = happyGoto action_11
action_98 (18) = happyGoto action_12
action_98 (19) = happyGoto action_13
action_98 _ = happyFail

action_99 (39) = happyShift action_114
action_99 _ = happyFail

action_100 _ = happyReduce_41

action_101 (62) = happyShift action_113
action_101 _ = happyFail

action_102 (72) = happyShift action_112
action_102 _ = happyFail

action_103 (33) = happyShift action_14
action_103 (37) = happyShift action_15
action_103 (38) = happyShift action_16
action_103 (41) = happyShift action_17
action_103 (42) = happyShift action_18
action_103 (58) = happyShift action_19
action_103 (65) = happyShift action_20
action_103 (70) = happyShift action_21
action_103 (71) = happyShift action_22
action_103 (72) = happyShift action_23
action_103 (5) = happyGoto action_111
action_103 (6) = happyGoto action_3
action_103 (7) = happyGoto action_4
action_103 (8) = happyGoto action_5
action_103 (10) = happyGoto action_6
action_103 (11) = happyGoto action_7
action_103 (13) = happyGoto action_8
action_103 (15) = happyGoto action_9
action_103 (16) = happyGoto action_10
action_103 (17) = happyGoto action_11
action_103 (18) = happyGoto action_12
action_103 (19) = happyGoto action_13
action_103 _ = happyFail

action_104 (72) = happyShift action_110
action_104 _ = happyFail

action_105 (72) = happyShift action_109
action_105 _ = happyFail

action_106 (55) = happyShift action_107
action_106 (68) = happyShift action_108
action_106 _ = happyFail

action_107 (33) = happyShift action_14
action_107 (37) = happyShift action_15
action_107 (38) = happyShift action_16
action_107 (41) = happyShift action_17
action_107 (42) = happyShift action_18
action_107 (58) = happyShift action_19
action_107 (65) = happyShift action_20
action_107 (70) = happyShift action_21
action_107 (71) = happyShift action_22
action_107 (72) = happyShift action_23
action_107 (5) = happyGoto action_120
action_107 (6) = happyGoto action_3
action_107 (7) = happyGoto action_4
action_107 (8) = happyGoto action_5
action_107 (10) = happyGoto action_6
action_107 (11) = happyGoto action_7
action_107 (13) = happyGoto action_8
action_107 (15) = happyGoto action_9
action_107 (16) = happyGoto action_10
action_107 (17) = happyGoto action_11
action_107 (18) = happyGoto action_12
action_107 (19) = happyGoto action_13
action_107 _ = happyFail

action_108 (72) = happyShift action_119
action_108 _ = happyFail

action_109 (68) = happyShift action_118
action_109 _ = happyFail

action_110 _ = happyReduce_57

action_111 _ = happyReduce_60

action_112 _ = happyReduce_54

action_113 _ = happyReduce_53

action_114 (33) = happyShift action_14
action_114 (37) = happyShift action_15
action_114 (38) = happyShift action_16
action_114 (41) = happyShift action_17
action_114 (42) = happyShift action_18
action_114 (58) = happyShift action_19
action_114 (65) = happyShift action_20
action_114 (70) = happyShift action_21
action_114 (71) = happyShift action_22
action_114 (72) = happyShift action_23
action_114 (5) = happyGoto action_117
action_114 (6) = happyGoto action_3
action_114 (7) = happyGoto action_4
action_114 (8) = happyGoto action_5
action_114 (10) = happyGoto action_6
action_114 (11) = happyGoto action_7
action_114 (13) = happyGoto action_8
action_114 (15) = happyGoto action_9
action_114 (16) = happyGoto action_10
action_114 (17) = happyGoto action_11
action_114 (18) = happyGoto action_12
action_114 (19) = happyGoto action_13
action_114 _ = happyFail

action_115 _ = happyReduce_24

action_116 _ = happyReduce_33

action_117 _ = happyReduce_37

action_118 (72) = happyShift action_122
action_118 _ = happyFail

action_119 (55) = happyShift action_121
action_119 _ = happyFail

action_120 _ = happyReduce_49

action_121 (33) = happyShift action_14
action_121 (37) = happyShift action_15
action_121 (38) = happyShift action_16
action_121 (41) = happyShift action_17
action_121 (42) = happyShift action_18
action_121 (58) = happyShift action_19
action_121 (65) = happyShift action_20
action_121 (70) = happyShift action_21
action_121 (71) = happyShift action_22
action_121 (72) = happyShift action_23
action_121 (5) = happyGoto action_123
action_121 (6) = happyGoto action_3
action_121 (7) = happyGoto action_4
action_121 (8) = happyGoto action_5
action_121 (10) = happyGoto action_6
action_121 (11) = happyGoto action_7
action_121 (13) = happyGoto action_8
action_121 (15) = happyGoto action_9
action_121 (16) = happyGoto action_10
action_121 (17) = happyGoto action_11
action_121 (18) = happyGoto action_12
action_121 (19) = happyGoto action_13
action_121 _ = happyFail

action_122 _ = happyReduce_58

action_123 _ = happyReduce_50

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
happyReduction_9 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn5
		 (AST.Break
	)

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn6
		 (AST.Var happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn7
		 (AST.RecField (AST.Var happy_var_1) happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 7 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.ArrSubscript (AST.Var happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 4 7 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 6 8 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (AST.Seq (happy_var_2 : happy_var_4 : reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_0  9 happyReduction_23
happyReduction_23  =  HappyAbsSyn9
		 ([]
	)

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  10 happyReduction_25
happyReduction_25 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn10
		 (AST.Neg happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 11 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_0  12 happyReduction_27
happyReduction_27  =  HappyAbsSyn12
		 ([]
	)

happyReduce_28 = happySpecReduce_1  12 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 4 13 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_0  14 happyReduction_31
happyReduction_31  =  HappyAbsSyn14
		 ([]
	)

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn14
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 5 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 15 happyReduction_34
happyReduction_34 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 (AST.Assign happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 17 happyReduction_36
happyReduction_36 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 8 18 happyReduction_37
happyReduction_37 ((HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.For happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 5 19 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn20  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn21  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.Let happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_0  20 happyReduction_39
happyReduction_39  =  HappyAbsSyn20
		 ([]
	)

happyReduce_40 = happySpecReduce_1  20 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1]
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  20 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_3 : happy_var_1
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_0  21 happyReduction_42
happyReduction_42  =  HappyAbsSyn21
		 ([]
	)

happyReduce_43 = happySpecReduce_1  21 happyReduction_43
happyReduction_43 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn21
		 (reverse happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  22 happyReduction_44
happyReduction_44 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 ([happy_var_1]
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  22 happyReduction_45
happyReduction_45 (HappyAbsSyn23  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_2 : happy_var_1
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  23 happyReduction_46
happyReduction_46 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn23
		 (AST.TDec happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  23 happyReduction_47
happyReduction_47 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn23
		 (AST.VDec happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  23 happyReduction_48
happyReduction_48 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (AST.FDec happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happyReduce 7 24 happyReduction_49
happyReduction_49 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_50 = happyReduce 9 24 happyReduction_50
happyReduction_50 ((HappyAbsSyn5  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 4 25 happyReduction_51
happyReduction_51 ((HappyAbsSyn26  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn25
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_1  26 happyReduction_52
happyReduction_52 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn26
		 (AST.Type happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  26 happyReduction_53
happyReduction_53 _
	(HappyAbsSyn27  happy_var_2)
	_
	 =  HappyAbsSyn26
		 (AST.Record happy_var_2
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  26 happyReduction_54
happyReduction_54 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn26
		 (AST.Array happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_0  27 happyReduction_55
happyReduction_55  =  HappyAbsSyn27
		 ([]
	)

happyReduce_56 = happySpecReduce_1  27 happyReduction_56
happyReduction_56 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 (reverse happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  28 happyReduction_57
happyReduction_57 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn28
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happyReduce 5 28 happyReduction_58
happyReduction_58 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn28  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 4 29 happyReduction_59
happyReduction_59 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_60 = happyReduce 6 29 happyReduction_60
happyReduction_60 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 74 74 tk (HappyState action) sts stk;
	TypeToken -> cont 30;
	VarToken -> cont 31;
	FunctionToken -> cont 32;
	BreakToken -> cont 33;
	OfToken -> cont 34;
	EndToken -> cont 35;
	InToken -> cont 36;
	NilToken -> cont 37;
	LetToken -> cont 38;
	DoToken -> cont 39;
	ToToken -> cont 40;
	ForToken -> cont 41;
	WhileToken -> cont 42;
	ElseToken -> cont 43;
	ThenToken -> cont 44;
	IfToken -> cont 45;
	ArrayToken -> cont 46;
	AssignToken -> cont 47;
	OrToken -> cont 48;
	AndToken -> cont 49;
	GeToken -> cont 50;
	GtToken -> cont 51;
	LeToken -> cont 52;
	LtToken -> cont 53;
	NeqToken -> cont 54;
	EqToken -> cont 55;
	DivideToken -> cont 56;
	TimesToken -> cont 57;
	MinusToken -> cont 58;
	PlusToken -> cont 59;
	DotToken -> cont 60;
	LbraceToken -> cont 61;
	RbraceToken -> cont 62;
	LbrackToken -> cont 63;
	RbrackToken -> cont 64;
	LparenToken -> cont 65;
	RparenToken -> cont 66;
	SemicolonToken -> cont 67;
	ColonToken -> cont 68;
	CommaToken -> cont 69;
	StringToken happy_dollar_dollar -> cont 70;
	IntToken happy_dollar_dollar -> cont 71;
	IdToken happy_dollar_dollar -> cont 72;
	EofToken -> cont 73;
	_ -> happyError' tk
	})

happyError_ 74 tk = happyError' tk
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
