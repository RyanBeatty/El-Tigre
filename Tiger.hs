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

action_26 (71) = happyShift action_64
action_26 _ = happyFail

action_27 (71) = happyShift action_63
action_27 (13) = happyGoto action_62
action_27 _ = happyReduce_30

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
action_28 (4) = happyGoto action_61
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
action_29 _ = happyReduce_26

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

action_47 (63) = happyShift action_81
action_47 _ = happyFail

action_48 _ = happyReduce_18

action_49 (63) = happyShift action_80
action_49 _ = happyFail

action_50 _ = happyReduce_34

action_51 (64) = happyShift action_79
action_51 _ = happyFail

action_52 (46) = happyShift action_77
action_52 (67) = happyShift action_78
action_52 _ = happyFail

action_53 (54) = happyShift action_76
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
action_55 (4) = happyGoto action_74
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
action_55 (19) = happyGoto action_75
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
action_56 (4) = happyGoto action_73
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
action_57 (4) = happyGoto action_72
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
action_58 (4) = happyGoto action_71
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

action_60 (65) = happyShift action_69
action_60 (68) = happyShift action_70
action_60 _ = happyFail

action_61 (63) = happyShift action_68
action_61 _ = happyFail

action_62 (61) = happyShift action_66
action_62 (68) = happyShift action_67
action_62 _ = happyFail

action_63 (54) = happyShift action_65
action_63 _ = happyFail

action_64 _ = happyReduce_17

action_65 (32) = happyShift action_16
action_65 (36) = happyShift action_17
action_65 (37) = happyShift action_18
action_65 (40) = happyShift action_19
action_65 (41) = happyShift action_20
action_65 (57) = happyShift action_21
action_65 (64) = happyShift action_22
action_65 (69) = happyShift action_23
action_65 (70) = happyShift action_24
action_65 (71) = happyShift action_25
action_65 (4) = happyGoto action_98
action_65 (5) = happyGoto action_6
action_65 (6) = happyGoto action_3
action_65 (7) = happyGoto action_7
action_65 (9) = happyGoto action_8
action_65 (10) = happyGoto action_9
action_65 (12) = happyGoto action_10
action_65 (14) = happyGoto action_11
action_65 (15) = happyGoto action_12
action_65 (16) = happyGoto action_13
action_65 (17) = happyGoto action_14
action_65 (18) = happyGoto action_15
action_65 _ = happyFail

action_66 _ = happyReduce_29

action_67 (71) = happyShift action_97
action_67 _ = happyFail

action_68 (33) = happyShift action_96
action_68 _ = happyReduce_19

action_69 _ = happyReduce_25

action_70 (32) = happyShift action_16
action_70 (36) = happyShift action_17
action_70 (37) = happyShift action_18
action_70 (40) = happyShift action_19
action_70 (41) = happyShift action_20
action_70 (57) = happyShift action_21
action_70 (64) = happyShift action_22
action_70 (69) = happyShift action_23
action_70 (70) = happyShift action_24
action_70 (71) = happyShift action_25
action_70 (4) = happyGoto action_95
action_70 (5) = happyGoto action_6
action_70 (6) = happyGoto action_3
action_70 (7) = happyGoto action_7
action_70 (9) = happyGoto action_8
action_70 (10) = happyGoto action_9
action_70 (12) = happyGoto action_10
action_70 (14) = happyGoto action_11
action_70 (15) = happyGoto action_12
action_70 (16) = happyGoto action_13
action_70 (17) = happyGoto action_14
action_70 (18) = happyGoto action_15
action_70 _ = happyFail

action_71 (8) = happyGoto action_94
action_71 _ = happyReduce_22

action_72 _ = happyReduce_35

action_73 (39) = happyShift action_93
action_73 _ = happyFail

action_74 _ = happyReduce_39

action_75 (34) = happyShift action_91
action_75 (66) = happyShift action_92
action_75 _ = happyFail

action_76 (45) = happyShift action_88
action_76 (60) = happyShift action_89
action_76 (71) = happyShift action_90
action_76 (25) = happyGoto action_87
action_76 _ = happyFail

action_77 (32) = happyShift action_16
action_77 (36) = happyShift action_17
action_77 (37) = happyShift action_18
action_77 (40) = happyShift action_19
action_77 (41) = happyShift action_20
action_77 (57) = happyShift action_21
action_77 (64) = happyShift action_22
action_77 (69) = happyShift action_23
action_77 (70) = happyShift action_24
action_77 (71) = happyShift action_25
action_77 (4) = happyGoto action_86
action_77 (5) = happyGoto action_6
action_77 (6) = happyGoto action_3
action_77 (7) = happyGoto action_7
action_77 (9) = happyGoto action_8
action_77 (10) = happyGoto action_9
action_77 (12) = happyGoto action_10
action_77 (14) = happyGoto action_11
action_77 (15) = happyGoto action_12
action_77 (16) = happyGoto action_13
action_77 (17) = happyGoto action_14
action_77 (18) = happyGoto action_15
action_77 _ = happyFail

action_78 (71) = happyShift action_85
action_78 _ = happyFail

action_79 (71) = happyShift action_84
action_79 (26) = happyGoto action_82
action_79 (27) = happyGoto action_83
action_79 _ = happyReduce_54

action_80 _ = happyReduce_19

action_81 _ = happyReduce_20

action_82 (65) = happyShift action_110
action_82 _ = happyFail

action_83 (68) = happyShift action_109
action_83 _ = happyReduce_55

action_84 (67) = happyShift action_108
action_84 _ = happyFail

action_85 (46) = happyShift action_107
action_85 _ = happyFail

action_86 _ = happyReduce_58

action_87 _ = happyReduce_50

action_88 (33) = happyShift action_106
action_88 _ = happyFail

action_89 (71) = happyShift action_84
action_89 (26) = happyGoto action_105
action_89 (27) = happyGoto action_83
action_89 _ = happyReduce_54

action_90 _ = happyReduce_51

action_91 _ = happyReduce_37

action_92 (32) = happyShift action_16
action_92 (36) = happyShift action_17
action_92 (37) = happyShift action_18
action_92 (40) = happyShift action_19
action_92 (41) = happyShift action_20
action_92 (57) = happyShift action_21
action_92 (64) = happyShift action_22
action_92 (69) = happyShift action_23
action_92 (70) = happyShift action_24
action_92 (71) = happyShift action_25
action_92 (4) = happyGoto action_104
action_92 (5) = happyGoto action_6
action_92 (6) = happyGoto action_3
action_92 (7) = happyGoto action_7
action_92 (9) = happyGoto action_8
action_92 (10) = happyGoto action_9
action_92 (12) = happyGoto action_10
action_92 (14) = happyGoto action_11
action_92 (15) = happyGoto action_12
action_92 (16) = happyGoto action_13
action_92 (17) = happyGoto action_14
action_92 (18) = happyGoto action_15
action_92 _ = happyFail

action_93 (32) = happyShift action_16
action_93 (36) = happyShift action_17
action_93 (37) = happyShift action_18
action_93 (40) = happyShift action_19
action_93 (41) = happyShift action_20
action_93 (57) = happyShift action_21
action_93 (64) = happyShift action_22
action_93 (69) = happyShift action_23
action_93 (70) = happyShift action_24
action_93 (71) = happyShift action_25
action_93 (4) = happyGoto action_103
action_93 (5) = happyGoto action_6
action_93 (6) = happyGoto action_3
action_93 (7) = happyGoto action_7
action_93 (9) = happyGoto action_8
action_93 (10) = happyGoto action_9
action_93 (12) = happyGoto action_10
action_93 (14) = happyGoto action_11
action_93 (15) = happyGoto action_12
action_93 (16) = happyGoto action_13
action_93 (17) = happyGoto action_14
action_93 (18) = happyGoto action_15
action_93 _ = happyFail

action_94 (65) = happyShift action_101
action_94 (66) = happyShift action_102
action_94 _ = happyFail

action_95 _ = happyReduce_28

action_96 (32) = happyShift action_16
action_96 (36) = happyShift action_17
action_96 (37) = happyShift action_18
action_96 (40) = happyShift action_19
action_96 (41) = happyShift action_20
action_96 (57) = happyShift action_21
action_96 (64) = happyShift action_22
action_96 (69) = happyShift action_23
action_96 (70) = happyShift action_24
action_96 (71) = happyShift action_25
action_96 (4) = happyGoto action_100
action_96 (5) = happyGoto action_6
action_96 (6) = happyGoto action_3
action_96 (7) = happyGoto action_7
action_96 (9) = happyGoto action_8
action_96 (10) = happyGoto action_9
action_96 (12) = happyGoto action_10
action_96 (14) = happyGoto action_11
action_96 (15) = happyGoto action_12
action_96 (16) = happyGoto action_13
action_96 (17) = happyGoto action_14
action_96 (18) = happyGoto action_15
action_96 _ = happyFail

action_97 (54) = happyShift action_99
action_97 _ = happyFail

action_98 _ = happyReduce_31

action_99 (32) = happyShift action_16
action_99 (36) = happyShift action_17
action_99 (37) = happyShift action_18
action_99 (40) = happyShift action_19
action_99 (41) = happyShift action_20
action_99 (57) = happyShift action_21
action_99 (64) = happyShift action_22
action_99 (69) = happyShift action_23
action_99 (70) = happyShift action_24
action_99 (71) = happyShift action_25
action_99 (4) = happyGoto action_120
action_99 (5) = happyGoto action_6
action_99 (6) = happyGoto action_3
action_99 (7) = happyGoto action_7
action_99 (9) = happyGoto action_8
action_99 (10) = happyGoto action_9
action_99 (12) = happyGoto action_10
action_99 (14) = happyGoto action_11
action_99 (15) = happyGoto action_12
action_99 (16) = happyGoto action_13
action_99 (17) = happyGoto action_14
action_99 (18) = happyGoto action_15
action_99 _ = happyFail

action_100 _ = happyReduce_33

action_101 _ = happyReduce_21

action_102 (32) = happyShift action_16
action_102 (36) = happyShift action_17
action_102 (37) = happyShift action_18
action_102 (40) = happyShift action_19
action_102 (41) = happyShift action_20
action_102 (57) = happyShift action_21
action_102 (64) = happyShift action_22
action_102 (69) = happyShift action_23
action_102 (70) = happyShift action_24
action_102 (71) = happyShift action_25
action_102 (4) = happyGoto action_119
action_102 (5) = happyGoto action_6
action_102 (6) = happyGoto action_3
action_102 (7) = happyGoto action_7
action_102 (9) = happyGoto action_8
action_102 (10) = happyGoto action_9
action_102 (12) = happyGoto action_10
action_102 (14) = happyGoto action_11
action_102 (15) = happyGoto action_12
action_102 (16) = happyGoto action_13
action_102 (17) = happyGoto action_14
action_102 (18) = happyGoto action_15
action_102 _ = happyFail

action_103 (38) = happyShift action_118
action_103 _ = happyFail

action_104 _ = happyReduce_40

action_105 (61) = happyShift action_117
action_105 _ = happyFail

action_106 (71) = happyShift action_116
action_106 _ = happyFail

action_107 (32) = happyShift action_16
action_107 (36) = happyShift action_17
action_107 (37) = happyShift action_18
action_107 (40) = happyShift action_19
action_107 (41) = happyShift action_20
action_107 (57) = happyShift action_21
action_107 (64) = happyShift action_22
action_107 (69) = happyShift action_23
action_107 (70) = happyShift action_24
action_107 (71) = happyShift action_25
action_107 (4) = happyGoto action_115
action_107 (5) = happyGoto action_6
action_107 (6) = happyGoto action_3
action_107 (7) = happyGoto action_7
action_107 (9) = happyGoto action_8
action_107 (10) = happyGoto action_9
action_107 (12) = happyGoto action_10
action_107 (14) = happyGoto action_11
action_107 (15) = happyGoto action_12
action_107 (16) = happyGoto action_13
action_107 (17) = happyGoto action_14
action_107 (18) = happyGoto action_15
action_107 _ = happyFail

action_108 (71) = happyShift action_114
action_108 _ = happyFail

action_109 (71) = happyShift action_113
action_109 _ = happyFail

action_110 (54) = happyShift action_111
action_110 (67) = happyShift action_112
action_110 _ = happyFail

action_111 (32) = happyShift action_16
action_111 (36) = happyShift action_17
action_111 (37) = happyShift action_18
action_111 (40) = happyShift action_19
action_111 (41) = happyShift action_20
action_111 (57) = happyShift action_21
action_111 (64) = happyShift action_22
action_111 (69) = happyShift action_23
action_111 (70) = happyShift action_24
action_111 (71) = happyShift action_25
action_111 (4) = happyGoto action_124
action_111 (5) = happyGoto action_6
action_111 (6) = happyGoto action_3
action_111 (7) = happyGoto action_7
action_111 (9) = happyGoto action_8
action_111 (10) = happyGoto action_9
action_111 (12) = happyGoto action_10
action_111 (14) = happyGoto action_11
action_111 (15) = happyGoto action_12
action_111 (16) = happyGoto action_13
action_111 (17) = happyGoto action_14
action_111 (18) = happyGoto action_15
action_111 _ = happyFail

action_112 (71) = happyShift action_123
action_112 _ = happyFail

action_113 (67) = happyShift action_122
action_113 _ = happyFail

action_114 _ = happyReduce_56

action_115 _ = happyReduce_59

action_116 _ = happyReduce_53

action_117 _ = happyReduce_52

action_118 (32) = happyShift action_16
action_118 (36) = happyShift action_17
action_118 (37) = happyShift action_18
action_118 (40) = happyShift action_19
action_118 (41) = happyShift action_20
action_118 (57) = happyShift action_21
action_118 (64) = happyShift action_22
action_118 (69) = happyShift action_23
action_118 (70) = happyShift action_24
action_118 (71) = happyShift action_25
action_118 (4) = happyGoto action_121
action_118 (5) = happyGoto action_6
action_118 (6) = happyGoto action_3
action_118 (7) = happyGoto action_7
action_118 (9) = happyGoto action_8
action_118 (10) = happyGoto action_9
action_118 (12) = happyGoto action_10
action_118 (14) = happyGoto action_11
action_118 (15) = happyGoto action_12
action_118 (16) = happyGoto action_13
action_118 (17) = happyGoto action_14
action_118 (18) = happyGoto action_15
action_118 _ = happyFail

action_119 _ = happyReduce_23

action_120 _ = happyReduce_32

action_121 _ = happyReduce_36

action_122 (71) = happyShift action_126
action_122 _ = happyFail

action_123 (54) = happyShift action_125
action_123 _ = happyFail

action_124 _ = happyReduce_48

action_125 (32) = happyShift action_16
action_125 (36) = happyShift action_17
action_125 (37) = happyShift action_18
action_125 (40) = happyShift action_19
action_125 (41) = happyShift action_20
action_125 (57) = happyShift action_21
action_125 (64) = happyShift action_22
action_125 (69) = happyShift action_23
action_125 (70) = happyShift action_24
action_125 (71) = happyShift action_25
action_125 (4) = happyGoto action_127
action_125 (5) = happyGoto action_6
action_125 (6) = happyGoto action_3
action_125 (7) = happyGoto action_7
action_125 (9) = happyGoto action_8
action_125 (10) = happyGoto action_9
action_125 (12) = happyGoto action_10
action_125 (14) = happyGoto action_11
action_125 (15) = happyGoto action_12
action_125 (16) = happyGoto action_13
action_125 (17) = happyGoto action_14
action_125 (18) = happyGoto action_15
action_125 _ = happyFail

action_126 _ = happyReduce_57

action_127 _ = happyReduce_49

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

happyReduce_25 = happyReduce 4 10 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_0  11 happyReduction_26
happyReduction_26  =  HappyAbsSyn11
		 ([]
	)

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

happyReduce_29 = happyReduce 4 12 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_0  13 happyReduction_30
happyReduction_30  =  HappyAbsSyn13
		 ([]
	)

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
