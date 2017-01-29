{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28
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

action_0 (32) = happyShift action_16
action_0 (36) = happyShift action_17
action_0 (37) = happyShift action_18
action_0 (40) = happyShift action_19
action_0 (41) = happyShift action_20
action_0 (57) = happyShift action_21
action_0 (64) = happyShift action_22
action_0 (69) = happyShift action_23
action_0 (70) = happyShift action_24
action_0 (71) = happyShift action_25
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_6
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (12) = happyGoto action_10
action_0 (14) = happyGoto action_11
action_0 (15) = happyGoto action_12
action_0 (16) = happyGoto action_13
action_0 (17) = happyGoto action_14
action_0 (18) = happyGoto action_15
action_0 _ = happyFail

action_1 (71) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail

action_2 _ = happyFail

action_3 (59) = happyShift action_45
action_3 (62) = happyShift action_46
action_3 _ = happyReduce_16

action_4 (59) = happyShift action_26
action_4 (62) = happyShift action_44
action_4 _ = happyFail

action_5 (73) = happyAccept
action_5 _ = happyFail

action_6 (46) = happyShift action_43
action_6 _ = happyReduce_1

action_7 _ = happyReduce_3

action_8 _ = happyReduce_6

action_9 _ = happyReduce_7

action_10 _ = happyReduce_8

action_11 _ = happyReduce_9

action_12 _ = happyReduce_10

action_13 _ = happyReduce_11

action_14 _ = happyReduce_12

action_15 _ = happyReduce_14

action_16 _ = happyReduce_13

action_17 _ = happyReduce_2

action_18 (29) = happyShift action_40
action_18 (30) = happyShift action_41
action_18 (31) = happyShift action_42
action_18 (20) = happyGoto action_34
action_18 (21) = happyGoto action_35
action_18 (22) = happyGoto action_36
action_18 (23) = happyGoto action_37
action_18 (24) = happyGoto action_38
action_18 (28) = happyGoto action_39
action_18 _ = happyReduce_41

action_19 (71) = happyShift action_33
action_19 _ = happyFail

action_20 (32) = happyShift action_16
action_20 (36) = happyShift action_17
action_20 (37) = happyShift action_18
action_20 (40) = happyShift action_19
action_20 (41) = happyShift action_20
action_20 (57) = happyShift action_21
action_20 (64) = happyShift action_22
action_20 (69) = happyShift action_23
action_20 (70) = happyShift action_24
action_20 (71) = happyShift action_25
action_20 (4) = happyGoto action_32
action_20 (5) = happyGoto action_6
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_7
action_20 (9) = happyGoto action_8
action_20 (10) = happyGoto action_9
action_20 (12) = happyGoto action_10
action_20 (14) = happyGoto action_11
action_20 (15) = happyGoto action_12
action_20 (16) = happyGoto action_13
action_20 (17) = happyGoto action_14
action_20 (18) = happyGoto action_15
action_20 _ = happyFail

action_21 (70) = happyShift action_31
action_21 _ = happyFail

action_22 (32) = happyShift action_16
action_22 (36) = happyShift action_17
action_22 (37) = happyShift action_18
action_22 (40) = happyShift action_19
action_22 (41) = happyShift action_20
action_22 (57) = happyShift action_21
action_22 (64) = happyShift action_22
action_22 (69) = happyShift action_23
action_22 (70) = happyShift action_24
action_22 (71) = happyShift action_25
action_22 (4) = happyGoto action_30
action_22 (5) = happyGoto action_6
action_22 (6) = happyGoto action_3
action_22 (7) = happyGoto action_7
action_22 (9) = happyGoto action_8
action_22 (10) = happyGoto action_9
action_22 (12) = happyGoto action_10
action_22 (14) = happyGoto action_11
action_22 (15) = happyGoto action_12
action_22 (16) = happyGoto action_13
action_22 (17) = happyGoto action_14
action_22 (18) = happyGoto action_15
action_22 _ = happyFail

action_23 _ = happyReduce_5

action_24 _ = happyReduce_4

action_25 (59) = happyShift action_26
action_25 (60) = happyShift action_27
action_25 (62) = happyShift action_28
action_25 (64) = happyShift action_29
action_25 _ = happyReduce_15

action_26 (71) = happyShift action_66
action_26 _ = happyFail

action_27 (61) = happyShift action_64
action_27 (71) = happyShift action_65
action_27 (13) = happyGoto action_63
action_27 _ = happyFail

action_28 (32) = happyShift action_16
action_28 (36) = happyShift action_17
action_28 (37) = happyShift action_18
action_28 (40) = happyShift action_19
action_28 (41) = happyShift action_20
action_28 (57) = happyShift action_21
action_28 (64) = happyShift action_22
action_28 (69) = happyShift action_23
action_28 (70) = happyShift action_24
action_28 (71) = happyShift action_25
action_28 (4) = happyGoto action_62
action_28 (5) = happyGoto action_6
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_7
action_28 (9) = happyGoto action_8
action_28 (10) = happyGoto action_9
action_28 (12) = happyGoto action_10
action_28 (14) = happyGoto action_11
action_28 (15) = happyGoto action_12
action_28 (16) = happyGoto action_13
action_28 (17) = happyGoto action_14
action_28 (18) = happyGoto action_15
action_28 _ = happyFail

action_29 (32) = happyShift action_16
action_29 (36) = happyShift action_17
action_29 (37) = happyShift action_18
action_29 (40) = happyShift action_19
action_29 (41) = happyShift action_20
action_29 (57) = happyShift action_21
action_29 (64) = happyShift action_22
action_29 (65) = happyShift action_61
action_29 (69) = happyShift action_23
action_29 (70) = happyShift action_24
action_29 (71) = happyShift action_25
action_29 (4) = happyGoto action_59
action_29 (5) = happyGoto action_6
action_29 (6) = happyGoto action_3
action_29 (7) = happyGoto action_7
action_29 (9) = happyGoto action_8
action_29 (10) = happyGoto action_9
action_29 (11) = happyGoto action_60
action_29 (12) = happyGoto action_10
action_29 (14) = happyGoto action_11
action_29 (15) = happyGoto action_12
action_29 (16) = happyGoto action_13
action_29 (17) = happyGoto action_14
action_29 (18) = happyGoto action_15
action_29 _ = happyFail

action_30 (66) = happyShift action_58
action_30 _ = happyFail

action_31 _ = happyReduce_24

action_32 (38) = happyShift action_57
action_32 _ = happyFail

action_33 (46) = happyShift action_56
action_33 _ = happyFail

action_34 (35) = happyShift action_55
action_34 _ = happyFail

action_35 (29) = happyShift action_40
action_35 (30) = happyShift action_41
action_35 (31) = happyShift action_42
action_35 (22) = happyGoto action_54
action_35 (23) = happyGoto action_37
action_35 (24) = happyGoto action_38
action_35 (28) = happyGoto action_39
action_35 _ = happyReduce_42

action_36 _ = happyReduce_43

action_37 _ = happyReduce_47

action_38 _ = happyReduce_45

action_39 _ = happyReduce_46

action_40 (71) = happyShift action_53
action_40 _ = happyFail

action_41 (71) = happyShift action_52
action_41 _ = happyFail

action_42 (71) = happyShift action_51
action_42 _ = happyFail

action_43 (32) = happyShift action_16
action_43 (36) = happyShift action_17
action_43 (37) = happyShift action_18
action_43 (40) = happyShift action_19
action_43 (41) = happyShift action_20
action_43 (57) = happyShift action_21
action_43 (64) = happyShift action_22
action_43 (69) = happyShift action_23
action_43 (70) = happyShift action_24
action_43 (71) = happyShift action_25
action_43 (4) = happyGoto action_50
action_43 (5) = happyGoto action_6
action_43 (6) = happyGoto action_3
action_43 (7) = happyGoto action_7
action_43 (9) = happyGoto action_8
action_43 (10) = happyGoto action_9
action_43 (12) = happyGoto action_10
action_43 (14) = happyGoto action_11
action_43 (15) = happyGoto action_12
action_43 (16) = happyGoto action_13
action_43 (17) = happyGoto action_14
action_43 (18) = happyGoto action_15
action_43 _ = happyFail

action_44 (32) = happyShift action_16
action_44 (36) = happyShift action_17
action_44 (37) = happyShift action_18
action_44 (40) = happyShift action_19
action_44 (41) = happyShift action_20
action_44 (57) = happyShift action_21
action_44 (64) = happyShift action_22
action_44 (69) = happyShift action_23
action_44 (70) = happyShift action_24
action_44 (71) = happyShift action_25
action_44 (4) = happyGoto action_49
action_44 (5) = happyGoto action_6
action_44 (6) = happyGoto action_3
action_44 (7) = happyGoto action_7
action_44 (9) = happyGoto action_8
action_44 (10) = happyGoto action_9
action_44 (12) = happyGoto action_10
action_44 (14) = happyGoto action_11
action_44 (15) = happyGoto action_12
action_44 (16) = happyGoto action_13
action_44 (17) = happyGoto action_14
action_44 (18) = happyGoto action_15
action_44 _ = happyFail

action_45 (71) = happyShift action_48
action_45 _ = happyFail

action_46 (32) = happyShift action_16
action_46 (36) = happyShift action_17
action_46 (37) = happyShift action_18
action_46 (40) = happyShift action_19
action_46 (41) = happyShift action_20
action_46 (57) = happyShift action_21
action_46 (64) = happyShift action_22
action_46 (69) = happyShift action_23
action_46 (70) = happyShift action_24
action_46 (71) = happyShift action_25
action_46 (4) = happyGoto action_47
action_46 (5) = happyGoto action_6
action_46 (6) = happyGoto action_3
action_46 (7) = happyGoto action_7
action_46 (9) = happyGoto action_8
action_46 (10) = happyGoto action_9
action_46 (12) = happyGoto action_10
action_46 (14) = happyGoto action_11
action_46 (15) = happyGoto action_12
action_46 (16) = happyGoto action_13
action_46 (17) = happyGoto action_14
action_46 (18) = happyGoto action_15
action_46 _ = happyFail

action_47 (63) = happyShift action_83
action_47 _ = happyFail

action_48 _ = happyReduce_18

action_49 (63) = happyShift action_82
action_49 _ = happyFail

action_50 _ = happyReduce_34

action_51 (64) = happyShift action_81
action_51 _ = happyFail

action_52 (46) = happyShift action_79
action_52 (67) = happyShift action_80
action_52 _ = happyFail

action_53 (54) = happyShift action_78
action_53 _ = happyFail

action_54 _ = happyReduce_44

action_55 (32) = happyShift action_16
action_55 (36) = happyShift action_17
action_55 (37) = happyShift action_18
action_55 (40) = happyShift action_19
action_55 (41) = happyShift action_20
action_55 (57) = happyShift action_21
action_55 (64) = happyShift action_22
action_55 (69) = happyShift action_23
action_55 (70) = happyShift action_24
action_55 (71) = happyShift action_25
action_55 (4) = happyGoto action_76
action_55 (5) = happyGoto action_6
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_7
action_55 (9) = happyGoto action_8
action_55 (10) = happyGoto action_9
action_55 (12) = happyGoto action_10
action_55 (14) = happyGoto action_11
action_55 (15) = happyGoto action_12
action_55 (16) = happyGoto action_13
action_55 (17) = happyGoto action_14
action_55 (18) = happyGoto action_15
action_55 (19) = happyGoto action_77
action_55 _ = happyReduce_38

action_56 (32) = happyShift action_16
action_56 (36) = happyShift action_17
action_56 (37) = happyShift action_18
action_56 (40) = happyShift action_19
action_56 (41) = happyShift action_20
action_56 (57) = happyShift action_21
action_56 (64) = happyShift action_22
action_56 (69) = happyShift action_23
action_56 (70) = happyShift action_24
action_56 (71) = happyShift action_25
action_56 (4) = happyGoto action_75
action_56 (5) = happyGoto action_6
action_56 (6) = happyGoto action_3
action_56 (7) = happyGoto action_7
action_56 (9) = happyGoto action_8
action_56 (10) = happyGoto action_9
action_56 (12) = happyGoto action_10
action_56 (14) = happyGoto action_11
action_56 (15) = happyGoto action_12
action_56 (16) = happyGoto action_13
action_56 (17) = happyGoto action_14
action_56 (18) = happyGoto action_15
action_56 _ = happyFail

action_57 (32) = happyShift action_16
action_57 (36) = happyShift action_17
action_57 (37) = happyShift action_18
action_57 (40) = happyShift action_19
action_57 (41) = happyShift action_20
action_57 (57) = happyShift action_21
action_57 (64) = happyShift action_22
action_57 (69) = happyShift action_23
action_57 (70) = happyShift action_24
action_57 (71) = happyShift action_25
action_57 (4) = happyGoto action_74
action_57 (5) = happyGoto action_6
action_57 (6) = happyGoto action_3
action_57 (7) = happyGoto action_7
action_57 (9) = happyGoto action_8
action_57 (10) = happyGoto action_9
action_57 (12) = happyGoto action_10
action_57 (14) = happyGoto action_11
action_57 (15) = happyGoto action_12
action_57 (16) = happyGoto action_13
action_57 (17) = happyGoto action_14
action_57 (18) = happyGoto action_15
action_57 _ = happyFail

action_58 (32) = happyShift action_16
action_58 (36) = happyShift action_17
action_58 (37) = happyShift action_18
action_58 (40) = happyShift action_19
action_58 (41) = happyShift action_20
action_58 (57) = happyShift action_21
action_58 (64) = happyShift action_22
action_58 (69) = happyShift action_23
action_58 (70) = happyShift action_24
action_58 (71) = happyShift action_25
action_58 (4) = happyGoto action_73
action_58 (5) = happyGoto action_6
action_58 (6) = happyGoto action_3
action_58 (7) = happyGoto action_7
action_58 (9) = happyGoto action_8
action_58 (10) = happyGoto action_9
action_58 (12) = happyGoto action_10
action_58 (14) = happyGoto action_11
action_58 (15) = happyGoto action_12
action_58 (16) = happyGoto action_13
action_58 (17) = happyGoto action_14
action_58 (18) = happyGoto action_15
action_58 _ = happyFail

action_59 _ = happyReduce_27

action_60 (65) = happyShift action_71
action_60 (68) = happyShift action_72
action_60 _ = happyFail

action_61 _ = happyReduce_25

action_62 (63) = happyShift action_70
action_62 _ = happyFail

action_63 (61) = happyShift action_68
action_63 (68) = happyShift action_69
action_63 _ = happyFail

action_64 _ = happyReduce_29

action_65 (54) = happyShift action_67
action_65 _ = happyFail

action_66 _ = happyReduce_17

action_67 (32) = happyShift action_16
action_67 (36) = happyShift action_17
action_67 (37) = happyShift action_18
action_67 (40) = happyShift action_19
action_67 (41) = happyShift action_20
action_67 (57) = happyShift action_21
action_67 (64) = happyShift action_22
action_67 (69) = happyShift action_23
action_67 (70) = happyShift action_24
action_67 (71) = happyShift action_25
action_67 (4) = happyGoto action_100
action_67 (5) = happyGoto action_6
action_67 (6) = happyGoto action_3
action_67 (7) = happyGoto action_7
action_67 (9) = happyGoto action_8
action_67 (10) = happyGoto action_9
action_67 (12) = happyGoto action_10
action_67 (14) = happyGoto action_11
action_67 (15) = happyGoto action_12
action_67 (16) = happyGoto action_13
action_67 (17) = happyGoto action_14
action_67 (18) = happyGoto action_15
action_67 _ = happyFail

action_68 _ = happyReduce_30

action_69 (71) = happyShift action_99
action_69 _ = happyFail

action_70 (33) = happyShift action_98
action_70 _ = happyReduce_19

action_71 _ = happyReduce_26

action_72 (32) = happyShift action_16
action_72 (36) = happyShift action_17
action_72 (37) = happyShift action_18
action_72 (40) = happyShift action_19
action_72 (41) = happyShift action_20
action_72 (57) = happyShift action_21
action_72 (64) = happyShift action_22
action_72 (69) = happyShift action_23
action_72 (70) = happyShift action_24
action_72 (71) = happyShift action_25
action_72 (4) = happyGoto action_97
action_72 (5) = happyGoto action_6
action_72 (6) = happyGoto action_3
action_72 (7) = happyGoto action_7
action_72 (9) = happyGoto action_8
action_72 (10) = happyGoto action_9
action_72 (12) = happyGoto action_10
action_72 (14) = happyGoto action_11
action_72 (15) = happyGoto action_12
action_72 (16) = happyGoto action_13
action_72 (17) = happyGoto action_14
action_72 (18) = happyGoto action_15
action_72 _ = happyFail

action_73 (8) = happyGoto action_96
action_73 _ = happyReduce_22

action_74 _ = happyReduce_35

action_75 (39) = happyShift action_95
action_75 _ = happyFail

action_76 _ = happyReduce_39

action_77 (34) = happyShift action_93
action_77 (66) = happyShift action_94
action_77 _ = happyFail

action_78 (45) = happyShift action_90
action_78 (60) = happyShift action_91
action_78 (71) = happyShift action_92
action_78 (25) = happyGoto action_89
action_78 _ = happyFail

action_79 (32) = happyShift action_16
action_79 (36) = happyShift action_17
action_79 (37) = happyShift action_18
action_79 (40) = happyShift action_19
action_79 (41) = happyShift action_20
action_79 (57) = happyShift action_21
action_79 (64) = happyShift action_22
action_79 (69) = happyShift action_23
action_79 (70) = happyShift action_24
action_79 (71) = happyShift action_25
action_79 (4) = happyGoto action_88
action_79 (5) = happyGoto action_6
action_79 (6) = happyGoto action_3
action_79 (7) = happyGoto action_7
action_79 (9) = happyGoto action_8
action_79 (10) = happyGoto action_9
action_79 (12) = happyGoto action_10
action_79 (14) = happyGoto action_11
action_79 (15) = happyGoto action_12
action_79 (16) = happyGoto action_13
action_79 (17) = happyGoto action_14
action_79 (18) = happyGoto action_15
action_79 _ = happyFail

action_80 (71) = happyShift action_87
action_80 _ = happyFail

action_81 (71) = happyShift action_86
action_81 (26) = happyGoto action_84
action_81 (27) = happyGoto action_85
action_81 _ = happyReduce_54

action_82 _ = happyReduce_19

action_83 _ = happyReduce_20

action_84 (65) = happyShift action_112
action_84 _ = happyFail

action_85 (68) = happyShift action_111
action_85 _ = happyReduce_55

action_86 (67) = happyShift action_110
action_86 _ = happyFail

action_87 (46) = happyShift action_109
action_87 _ = happyFail

action_88 _ = happyReduce_58

action_89 _ = happyReduce_50

action_90 (33) = happyShift action_108
action_90 _ = happyFail

action_91 (71) = happyShift action_86
action_91 (26) = happyGoto action_107
action_91 (27) = happyGoto action_85
action_91 _ = happyReduce_54

action_92 _ = happyReduce_51

action_93 _ = happyReduce_37

action_94 (32) = happyShift action_16
action_94 (36) = happyShift action_17
action_94 (37) = happyShift action_18
action_94 (40) = happyShift action_19
action_94 (41) = happyShift action_20
action_94 (57) = happyShift action_21
action_94 (64) = happyShift action_22
action_94 (69) = happyShift action_23
action_94 (70) = happyShift action_24
action_94 (71) = happyShift action_25
action_94 (4) = happyGoto action_106
action_94 (5) = happyGoto action_6
action_94 (6) = happyGoto action_3
action_94 (7) = happyGoto action_7
action_94 (9) = happyGoto action_8
action_94 (10) = happyGoto action_9
action_94 (12) = happyGoto action_10
action_94 (14) = happyGoto action_11
action_94 (15) = happyGoto action_12
action_94 (16) = happyGoto action_13
action_94 (17) = happyGoto action_14
action_94 (18) = happyGoto action_15
action_94 _ = happyFail

action_95 (32) = happyShift action_16
action_95 (36) = happyShift action_17
action_95 (37) = happyShift action_18
action_95 (40) = happyShift action_19
action_95 (41) = happyShift action_20
action_95 (57) = happyShift action_21
action_95 (64) = happyShift action_22
action_95 (69) = happyShift action_23
action_95 (70) = happyShift action_24
action_95 (71) = happyShift action_25
action_95 (4) = happyGoto action_105
action_95 (5) = happyGoto action_6
action_95 (6) = happyGoto action_3
action_95 (7) = happyGoto action_7
action_95 (9) = happyGoto action_8
action_95 (10) = happyGoto action_9
action_95 (12) = happyGoto action_10
action_95 (14) = happyGoto action_11
action_95 (15) = happyGoto action_12
action_95 (16) = happyGoto action_13
action_95 (17) = happyGoto action_14
action_95 (18) = happyGoto action_15
action_95 _ = happyFail

action_96 (65) = happyShift action_103
action_96 (66) = happyShift action_104
action_96 _ = happyFail

action_97 _ = happyReduce_28

action_98 (32) = happyShift action_16
action_98 (36) = happyShift action_17
action_98 (37) = happyShift action_18
action_98 (40) = happyShift action_19
action_98 (41) = happyShift action_20
action_98 (57) = happyShift action_21
action_98 (64) = happyShift action_22
action_98 (69) = happyShift action_23
action_98 (70) = happyShift action_24
action_98 (71) = happyShift action_25
action_98 (4) = happyGoto action_102
action_98 (5) = happyGoto action_6
action_98 (6) = happyGoto action_3
action_98 (7) = happyGoto action_7
action_98 (9) = happyGoto action_8
action_98 (10) = happyGoto action_9
action_98 (12) = happyGoto action_10
action_98 (14) = happyGoto action_11
action_98 (15) = happyGoto action_12
action_98 (16) = happyGoto action_13
action_98 (17) = happyGoto action_14
action_98 (18) = happyGoto action_15
action_98 _ = happyFail

action_99 (54) = happyShift action_101
action_99 _ = happyFail

action_100 _ = happyReduce_31

action_101 (32) = happyShift action_16
action_101 (36) = happyShift action_17
action_101 (37) = happyShift action_18
action_101 (40) = happyShift action_19
action_101 (41) = happyShift action_20
action_101 (57) = happyShift action_21
action_101 (64) = happyShift action_22
action_101 (69) = happyShift action_23
action_101 (70) = happyShift action_24
action_101 (71) = happyShift action_25
action_101 (4) = happyGoto action_122
action_101 (5) = happyGoto action_6
action_101 (6) = happyGoto action_3
action_101 (7) = happyGoto action_7
action_101 (9) = happyGoto action_8
action_101 (10) = happyGoto action_9
action_101 (12) = happyGoto action_10
action_101 (14) = happyGoto action_11
action_101 (15) = happyGoto action_12
action_101 (16) = happyGoto action_13
action_101 (17) = happyGoto action_14
action_101 (18) = happyGoto action_15
action_101 _ = happyFail

action_102 _ = happyReduce_33

action_103 _ = happyReduce_21

action_104 (32) = happyShift action_16
action_104 (36) = happyShift action_17
action_104 (37) = happyShift action_18
action_104 (40) = happyShift action_19
action_104 (41) = happyShift action_20
action_104 (57) = happyShift action_21
action_104 (64) = happyShift action_22
action_104 (69) = happyShift action_23
action_104 (70) = happyShift action_24
action_104 (71) = happyShift action_25
action_104 (4) = happyGoto action_121
action_104 (5) = happyGoto action_6
action_104 (6) = happyGoto action_3
action_104 (7) = happyGoto action_7
action_104 (9) = happyGoto action_8
action_104 (10) = happyGoto action_9
action_104 (12) = happyGoto action_10
action_104 (14) = happyGoto action_11
action_104 (15) = happyGoto action_12
action_104 (16) = happyGoto action_13
action_104 (17) = happyGoto action_14
action_104 (18) = happyGoto action_15
action_104 _ = happyFail

action_105 (38) = happyShift action_120
action_105 _ = happyFail

action_106 _ = happyReduce_40

action_107 (61) = happyShift action_119
action_107 _ = happyFail

action_108 (71) = happyShift action_118
action_108 _ = happyFail

action_109 (32) = happyShift action_16
action_109 (36) = happyShift action_17
action_109 (37) = happyShift action_18
action_109 (40) = happyShift action_19
action_109 (41) = happyShift action_20
action_109 (57) = happyShift action_21
action_109 (64) = happyShift action_22
action_109 (69) = happyShift action_23
action_109 (70) = happyShift action_24
action_109 (71) = happyShift action_25
action_109 (4) = happyGoto action_117
action_109 (5) = happyGoto action_6
action_109 (6) = happyGoto action_3
action_109 (7) = happyGoto action_7
action_109 (9) = happyGoto action_8
action_109 (10) = happyGoto action_9
action_109 (12) = happyGoto action_10
action_109 (14) = happyGoto action_11
action_109 (15) = happyGoto action_12
action_109 (16) = happyGoto action_13
action_109 (17) = happyGoto action_14
action_109 (18) = happyGoto action_15
action_109 _ = happyFail

action_110 (71) = happyShift action_116
action_110 _ = happyFail

action_111 (71) = happyShift action_115
action_111 _ = happyFail

action_112 (54) = happyShift action_113
action_112 (67) = happyShift action_114
action_112 _ = happyFail

action_113 (32) = happyShift action_16
action_113 (36) = happyShift action_17
action_113 (37) = happyShift action_18
action_113 (40) = happyShift action_19
action_113 (41) = happyShift action_20
action_113 (57) = happyShift action_21
action_113 (64) = happyShift action_22
action_113 (69) = happyShift action_23
action_113 (70) = happyShift action_24
action_113 (71) = happyShift action_25
action_113 (4) = happyGoto action_126
action_113 (5) = happyGoto action_6
action_113 (6) = happyGoto action_3
action_113 (7) = happyGoto action_7
action_113 (9) = happyGoto action_8
action_113 (10) = happyGoto action_9
action_113 (12) = happyGoto action_10
action_113 (14) = happyGoto action_11
action_113 (15) = happyGoto action_12
action_113 (16) = happyGoto action_13
action_113 (17) = happyGoto action_14
action_113 (18) = happyGoto action_15
action_113 _ = happyFail

action_114 (71) = happyShift action_125
action_114 _ = happyFail

action_115 (67) = happyShift action_124
action_115 _ = happyFail

action_116 _ = happyReduce_56

action_117 _ = happyReduce_59

action_118 _ = happyReduce_53

action_119 _ = happyReduce_52

action_120 (32) = happyShift action_16
action_120 (36) = happyShift action_17
action_120 (37) = happyShift action_18
action_120 (40) = happyShift action_19
action_120 (41) = happyShift action_20
action_120 (57) = happyShift action_21
action_120 (64) = happyShift action_22
action_120 (69) = happyShift action_23
action_120 (70) = happyShift action_24
action_120 (71) = happyShift action_25
action_120 (4) = happyGoto action_123
action_120 (5) = happyGoto action_6
action_120 (6) = happyGoto action_3
action_120 (7) = happyGoto action_7
action_120 (9) = happyGoto action_8
action_120 (10) = happyGoto action_9
action_120 (12) = happyGoto action_10
action_120 (14) = happyGoto action_11
action_120 (15) = happyGoto action_12
action_120 (16) = happyGoto action_13
action_120 (17) = happyGoto action_14
action_120 (18) = happyGoto action_15
action_120 _ = happyFail

action_121 _ = happyReduce_23

action_122 _ = happyReduce_32

action_123 _ = happyReduce_36

action_124 (71) = happyShift action_128
action_124 _ = happyFail

action_125 (54) = happyShift action_127
action_125 _ = happyFail

action_126 _ = happyReduce_48

action_127 (32) = happyShift action_16
action_127 (36) = happyShift action_17
action_127 (37) = happyShift action_18
action_127 (40) = happyShift action_19
action_127 (41) = happyShift action_20
action_127 (57) = happyShift action_21
action_127 (64) = happyShift action_22
action_127 (69) = happyShift action_23
action_127 (70) = happyShift action_24
action_127 (71) = happyShift action_25
action_127 (4) = happyGoto action_129
action_127 (5) = happyGoto action_6
action_127 (6) = happyGoto action_3
action_127 (7) = happyGoto action_7
action_127 (9) = happyGoto action_8
action_127 (10) = happyGoto action_9
action_127 (12) = happyGoto action_10
action_127 (14) = happyGoto action_11
action_127 (15) = happyGoto action_12
action_127 (16) = happyGoto action_13
action_127 (17) = happyGoto action_14
action_127 (18) = happyGoto action_15
action_127 _ = happyFail

action_128 _ = happyReduce_57

action_129 _ = happyReduce_49

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
happyReduction_4 (HappyTerminal (IntToken happy_var_1))
	 =  HappyAbsSyn4
		 (AST.IntLit happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyTerminal (StringToken happy_var_1))
	 =  HappyAbsSyn4
		 (AST.StringLit happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyAbsSyn14  happy_var_1)
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

happyReduce_12 = happySpecReduce_1  4 happyReduction_12
happyReduction_12 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  4 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn4
		 (AST.Break
	)

happyReduce_14 = happySpecReduce_1  4 happyReduction_14
happyReduction_14 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn5
		 (AST.Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn6
		 (AST.RecField (AST.Var happy_var_1) happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 6 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.ArrSubscript (AST.Var happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 6 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 7 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_2 : happy_var_4 : (reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_0  8 happyReduction_22
happyReduction_22  =  HappyAbsSyn8
		 ([]
	)

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_3 : happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  9 happyReduction_24
happyReduction_24 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn9
		 (AST.Neg happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn10
		 (AST.FunCall happy_var_1 []
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 10 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  11 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 _
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn12
		 (AST.RecExp happy_var_1 []
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 4 12 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn13
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 5 13 happyReduction_32
happyReduction_32 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn15
		 (AST.Assign happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 16 happyReduction_35
happyReduction_35 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 8 17 happyReduction_36
happyReduction_36 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.For happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 5 18 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.Let happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_0  19 happyReduction_38
happyReduction_38  =  HappyAbsSyn19
		 ([]
	)

happyReduce_39 = happySpecReduce_1  19 happyReduction_39
happyReduction_39 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn19
		 ([happy_var_1]
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  19 happyReduction_40
happyReduction_40 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_3 : happy_var_1
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_0  20 happyReduction_41
happyReduction_41  =  HappyAbsSyn20
		 ([]
	)

happyReduce_42 = happySpecReduce_1  20 happyReduction_42
happyReduction_42 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn20
		 (reverse happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  21 happyReduction_43
happyReduction_43 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn21
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  21 happyReduction_44
happyReduction_44 (HappyAbsSyn22  happy_var_2)
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_2 : happy_var_1
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  22 happyReduction_45
happyReduction_45 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn22
		 (AST.TDec happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  22 happyReduction_46
happyReduction_46 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn22
		 (AST.VDec happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  22 happyReduction_47
happyReduction_47 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 (AST.FDec happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happyReduce 7 23 happyReduction_48
happyReduction_48 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_49 = happyReduce 9 23 happyReduction_49
happyReduction_49 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_50 = happyReduce 4 24 happyReduction_50
happyReduction_50 ((HappyAbsSyn25  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn24
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_51 = happySpecReduce_1  25 happyReduction_51
happyReduction_51 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn25
		 (AST.Type happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  25 happyReduction_52
happyReduction_52 _
	(HappyAbsSyn26  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (AST.Record happy_var_2
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  25 happyReduction_53
happyReduction_53 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn25
		 (AST.Array happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_0  26 happyReduction_54
happyReduction_54  =  HappyAbsSyn26
		 ([]
	)

happyReduce_55 = happySpecReduce_1  26 happyReduction_55
happyReduction_55 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (reverse happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  27 happyReduction_56
happyReduction_56 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn27
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happyReduce 5 27 happyReduction_57
happyReduction_57 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn27  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 4 28 happyReduction_58
happyReduction_58 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 6 28 happyReduction_59
happyReduction_59 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 73 73 tk (HappyState action) sts stk;
	TypeToken -> cont 29;
	VarToken -> cont 30;
	FunctionToken -> cont 31;
	BreakToken -> cont 32;
	OfToken -> cont 33;
	EndToken -> cont 34;
	InToken -> cont 35;
	NilToken -> cont 36;
	LetToken -> cont 37;
	DoToken -> cont 38;
	ToToken -> cont 39;
	ForToken -> cont 40;
	WhileToken -> cont 41;
	ElseToken -> cont 42;
	ThenToken -> cont 43;
	IfToken -> cont 44;
	ArrayToken -> cont 45;
	AssignToken -> cont 46;
	OrToken -> cont 47;
	AndToken -> cont 48;
	GeToken -> cont 49;
	GtToken -> cont 50;
	LeToken -> cont 51;
	LtToken -> cont 52;
	NeqToken -> cont 53;
	EqToken -> cont 54;
	DivideToken -> cont 55;
	TimesToken -> cont 56;
	MinusToken -> cont 57;
	PlusToken -> cont 58;
	DotToken -> cont 59;
	LbraceToken -> cont 60;
	RbraceToken -> cont 61;
	LbrackToken -> cont 62;
	RbrackToken -> cont 63;
	LparenToken -> cont 64;
	RparenToken -> cont 65;
	SemicolonToken -> cont 66;
	ColonToken -> cont 67;
	CommaToken -> cont 68;
	StringToken happy_dollar_dollar -> cont 69;
	IntToken happy_dollar_dollar -> cont 70;
	IdToken happy_dollar_dollar -> cont 71;
	EofToken -> cont 72;
	_ -> happyError' tk
	})

happyError_ 73 tk = happyError' tk
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
