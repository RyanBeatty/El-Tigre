{-# OPTIONS_GHC -w #-}
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34
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
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 t34

action_0 (38) = happyShift action_19
action_0 (42) = happyShift action_20
action_0 (43) = happyShift action_21
action_0 (46) = happyShift action_22
action_0 (47) = happyShift action_23
action_0 (50) = happyShift action_24
action_0 (63) = happyShift action_25
action_0 (70) = happyShift action_26
action_0 (75) = happyShift action_27
action_0 (76) = happyShift action_28
action_0 (77) = happyShift action_29
action_0 (4) = happyGoto action_30
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (10) = happyGoto action_6
action_0 (11) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 (14) = happyGoto action_9
action_0 (15) = happyGoto action_10
action_0 (16) = happyGoto action_11
action_0 (18) = happyGoto action_12
action_0 (19) = happyGoto action_13
action_0 (20) = happyGoto action_14
action_0 (21) = happyGoto action_15
action_0 (22) = happyGoto action_16
action_0 (23) = happyGoto action_17
action_0 (25) = happyGoto action_18
action_0 _ = happyFail

action_1 (38) = happyShift action_19
action_1 (42) = happyShift action_20
action_1 (43) = happyShift action_21
action_1 (46) = happyShift action_22
action_1 (47) = happyShift action_23
action_1 (50) = happyShift action_24
action_1 (63) = happyShift action_25
action_1 (70) = happyShift action_26
action_1 (75) = happyShift action_27
action_1 (76) = happyShift action_28
action_1 (77) = happyShift action_29
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (10) = happyGoto action_6
action_1 (11) = happyGoto action_7
action_1 (13) = happyGoto action_8
action_1 (14) = happyGoto action_9
action_1 (15) = happyGoto action_10
action_1 (16) = happyGoto action_11
action_1 (18) = happyGoto action_12
action_1 (19) = happyGoto action_13
action_1 (20) = happyGoto action_14
action_1 (21) = happyGoto action_15
action_1 (22) = happyGoto action_16
action_1 (23) = happyGoto action_17
action_1 (25) = happyGoto action_18
action_1 _ = happyFail

action_2 (53) = happyShift action_52
action_2 (54) = happyShift action_53
action_2 (55) = happyShift action_54
action_2 (56) = happyShift action_55
action_2 (57) = happyShift action_56
action_2 (58) = happyShift action_57
action_2 (59) = happyShift action_58
action_2 (60) = happyShift action_59
action_2 (61) = happyShift action_60
action_2 (62) = happyShift action_61
action_2 (63) = happyShift action_62
action_2 (64) = happyShift action_63
action_2 _ = happyReduce_1

action_3 (52) = happyShift action_51
action_3 _ = happyReduce_2

action_4 (65) = happyShift action_49
action_4 (68) = happyShift action_50
action_4 _ = happyReduce_22

action_5 _ = happyReduce_4

action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 _ = happyReduce_9

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_13

action_13 _ = happyReduce_14

action_14 _ = happyReduce_15

action_15 _ = happyReduce_16

action_16 _ = happyReduce_17

action_17 _ = happyReduce_19

action_18 _ = happyReduce_20

action_19 _ = happyReduce_18

action_20 _ = happyReduce_3

action_21 (35) = happyShift action_46
action_21 (36) = happyShift action_47
action_21 (37) = happyShift action_48
action_21 (26) = happyGoto action_40
action_21 (27) = happyGoto action_41
action_21 (28) = happyGoto action_42
action_21 (29) = happyGoto action_43
action_21 (30) = happyGoto action_44
action_21 (34) = happyGoto action_45
action_21 _ = happyReduce_61

action_22 (77) = happyShift action_39
action_22 _ = happyFail

action_23 (38) = happyShift action_19
action_23 (42) = happyShift action_20
action_23 (43) = happyShift action_21
action_23 (46) = happyShift action_22
action_23 (47) = happyShift action_23
action_23 (50) = happyShift action_24
action_23 (63) = happyShift action_25
action_23 (70) = happyShift action_26
action_23 (75) = happyShift action_27
action_23 (76) = happyShift action_28
action_23 (77) = happyShift action_29
action_23 (5) = happyGoto action_38
action_23 (6) = happyGoto action_3
action_23 (7) = happyGoto action_4
action_23 (8) = happyGoto action_5
action_23 (10) = happyGoto action_6
action_23 (11) = happyGoto action_7
action_23 (13) = happyGoto action_8
action_23 (14) = happyGoto action_9
action_23 (15) = happyGoto action_10
action_23 (16) = happyGoto action_11
action_23 (18) = happyGoto action_12
action_23 (19) = happyGoto action_13
action_23 (20) = happyGoto action_14
action_23 (21) = happyGoto action_15
action_23 (22) = happyGoto action_16
action_23 (23) = happyGoto action_17
action_23 (25) = happyGoto action_18
action_23 _ = happyFail

action_24 (38) = happyShift action_19
action_24 (42) = happyShift action_20
action_24 (43) = happyShift action_21
action_24 (46) = happyShift action_22
action_24 (47) = happyShift action_23
action_24 (50) = happyShift action_24
action_24 (63) = happyShift action_25
action_24 (70) = happyShift action_26
action_24 (75) = happyShift action_27
action_24 (76) = happyShift action_28
action_24 (77) = happyShift action_29
action_24 (5) = happyGoto action_37
action_24 (6) = happyGoto action_3
action_24 (7) = happyGoto action_4
action_24 (8) = happyGoto action_5
action_24 (10) = happyGoto action_6
action_24 (11) = happyGoto action_7
action_24 (13) = happyGoto action_8
action_24 (14) = happyGoto action_9
action_24 (15) = happyGoto action_10
action_24 (16) = happyGoto action_11
action_24 (18) = happyGoto action_12
action_24 (19) = happyGoto action_13
action_24 (20) = happyGoto action_14
action_24 (21) = happyGoto action_15
action_24 (22) = happyGoto action_16
action_24 (23) = happyGoto action_17
action_24 (25) = happyGoto action_18
action_24 _ = happyFail

action_25 (76) = happyShift action_36
action_25 _ = happyFail

action_26 (38) = happyShift action_19
action_26 (42) = happyShift action_20
action_26 (43) = happyShift action_21
action_26 (46) = happyShift action_22
action_26 (47) = happyShift action_23
action_26 (50) = happyShift action_24
action_26 (63) = happyShift action_25
action_26 (70) = happyShift action_26
action_26 (75) = happyShift action_27
action_26 (76) = happyShift action_28
action_26 (77) = happyShift action_29
action_26 (5) = happyGoto action_35
action_26 (6) = happyGoto action_3
action_26 (7) = happyGoto action_4
action_26 (8) = happyGoto action_5
action_26 (10) = happyGoto action_6
action_26 (11) = happyGoto action_7
action_26 (13) = happyGoto action_8
action_26 (14) = happyGoto action_9
action_26 (15) = happyGoto action_10
action_26 (16) = happyGoto action_11
action_26 (18) = happyGoto action_12
action_26 (19) = happyGoto action_13
action_26 (20) = happyGoto action_14
action_26 (21) = happyGoto action_15
action_26 (22) = happyGoto action_16
action_26 (23) = happyGoto action_17
action_26 (25) = happyGoto action_18
action_26 _ = happyFail

action_27 _ = happyReduce_6

action_28 _ = happyReduce_5

action_29 (65) = happyShift action_31
action_29 (66) = happyShift action_32
action_29 (68) = happyShift action_33
action_29 (70) = happyShift action_34
action_29 _ = happyReduce_21

action_30 (78) = happyAccept
action_30 _ = happyFail

action_31 (77) = happyShift action_94
action_31 _ = happyFail

action_32 (77) = happyShift action_93
action_32 (17) = happyGoto action_92
action_32 _ = happyReduce_48

action_33 (38) = happyShift action_19
action_33 (42) = happyShift action_20
action_33 (43) = happyShift action_21
action_33 (46) = happyShift action_22
action_33 (47) = happyShift action_23
action_33 (50) = happyShift action_24
action_33 (63) = happyShift action_25
action_33 (70) = happyShift action_26
action_33 (75) = happyShift action_27
action_33 (76) = happyShift action_28
action_33 (77) = happyShift action_29
action_33 (5) = happyGoto action_91
action_33 (6) = happyGoto action_3
action_33 (7) = happyGoto action_4
action_33 (8) = happyGoto action_5
action_33 (10) = happyGoto action_6
action_33 (11) = happyGoto action_7
action_33 (13) = happyGoto action_8
action_33 (14) = happyGoto action_9
action_33 (15) = happyGoto action_10
action_33 (16) = happyGoto action_11
action_33 (18) = happyGoto action_12
action_33 (19) = happyGoto action_13
action_33 (20) = happyGoto action_14
action_33 (21) = happyGoto action_15
action_33 (22) = happyGoto action_16
action_33 (23) = happyGoto action_17
action_33 (25) = happyGoto action_18
action_33 _ = happyFail

action_34 (38) = happyShift action_19
action_34 (42) = happyShift action_20
action_34 (43) = happyShift action_21
action_34 (46) = happyShift action_22
action_34 (47) = happyShift action_23
action_34 (50) = happyShift action_24
action_34 (63) = happyShift action_25
action_34 (70) = happyShift action_26
action_34 (75) = happyShift action_27
action_34 (76) = happyShift action_28
action_34 (77) = happyShift action_29
action_34 (5) = happyGoto action_89
action_34 (6) = happyGoto action_3
action_34 (7) = happyGoto action_4
action_34 (8) = happyGoto action_5
action_34 (10) = happyGoto action_6
action_34 (11) = happyGoto action_7
action_34 (12) = happyGoto action_90
action_34 (13) = happyGoto action_8
action_34 (14) = happyGoto action_9
action_34 (15) = happyGoto action_10
action_34 (16) = happyGoto action_11
action_34 (18) = happyGoto action_12
action_34 (19) = happyGoto action_13
action_34 (20) = happyGoto action_14
action_34 (21) = happyGoto action_15
action_34 (22) = happyGoto action_16
action_34 (23) = happyGoto action_17
action_34 (25) = happyGoto action_18
action_34 _ = happyReduce_32

action_35 (53) = happyShift action_52
action_35 (54) = happyShift action_53
action_35 (55) = happyShift action_54
action_35 (56) = happyShift action_55
action_35 (57) = happyShift action_56
action_35 (58) = happyShift action_57
action_35 (59) = happyShift action_58
action_35 (60) = happyShift action_59
action_35 (61) = happyShift action_60
action_35 (62) = happyShift action_61
action_35 (63) = happyShift action_62
action_35 (64) = happyShift action_63
action_35 (71) = happyShift action_87
action_35 (72) = happyShift action_88
action_35 _ = happyFail

action_36 _ = happyReduce_30

action_37 (49) = happyShift action_86
action_37 (53) = happyShift action_52
action_37 (54) = happyShift action_53
action_37 (55) = happyShift action_54
action_37 (56) = happyShift action_55
action_37 (57) = happyShift action_56
action_37 (58) = happyShift action_57
action_37 (59) = happyShift action_58
action_37 (60) = happyShift action_59
action_37 (61) = happyShift action_60
action_37 (62) = happyShift action_61
action_37 (63) = happyShift action_62
action_37 (64) = happyShift action_63
action_37 _ = happyFail

action_38 (44) = happyShift action_85
action_38 (53) = happyShift action_52
action_38 (54) = happyShift action_53
action_38 (55) = happyShift action_54
action_38 (56) = happyShift action_55
action_38 (57) = happyShift action_56
action_38 (58) = happyShift action_57
action_38 (59) = happyShift action_58
action_38 (60) = happyShift action_59
action_38 (61) = happyShift action_60
action_38 (62) = happyShift action_61
action_38 (63) = happyShift action_62
action_38 (64) = happyShift action_63
action_38 _ = happyFail

action_39 (52) = happyShift action_84
action_39 _ = happyFail

action_40 (41) = happyShift action_83
action_40 _ = happyFail

action_41 (35) = happyShift action_46
action_41 (36) = happyShift action_47
action_41 (37) = happyShift action_48
action_41 (28) = happyGoto action_82
action_41 (29) = happyGoto action_43
action_41 (30) = happyGoto action_44
action_41 (34) = happyGoto action_45
action_41 _ = happyReduce_62

action_42 _ = happyReduce_63

action_43 _ = happyReduce_67

action_44 _ = happyReduce_65

action_45 _ = happyReduce_66

action_46 (77) = happyShift action_81
action_46 _ = happyFail

action_47 (77) = happyShift action_80
action_47 _ = happyFail

action_48 (77) = happyShift action_79
action_48 _ = happyFail

action_49 (77) = happyShift action_78
action_49 _ = happyFail

action_50 (38) = happyShift action_19
action_50 (42) = happyShift action_20
action_50 (43) = happyShift action_21
action_50 (46) = happyShift action_22
action_50 (47) = happyShift action_23
action_50 (50) = happyShift action_24
action_50 (63) = happyShift action_25
action_50 (70) = happyShift action_26
action_50 (75) = happyShift action_27
action_50 (76) = happyShift action_28
action_50 (77) = happyShift action_29
action_50 (5) = happyGoto action_77
action_50 (6) = happyGoto action_3
action_50 (7) = happyGoto action_4
action_50 (8) = happyGoto action_5
action_50 (10) = happyGoto action_6
action_50 (11) = happyGoto action_7
action_50 (13) = happyGoto action_8
action_50 (14) = happyGoto action_9
action_50 (15) = happyGoto action_10
action_50 (16) = happyGoto action_11
action_50 (18) = happyGoto action_12
action_50 (19) = happyGoto action_13
action_50 (20) = happyGoto action_14
action_50 (21) = happyGoto action_15
action_50 (22) = happyGoto action_16
action_50 (23) = happyGoto action_17
action_50 (25) = happyGoto action_18
action_50 _ = happyFail

action_51 (38) = happyShift action_19
action_51 (42) = happyShift action_20
action_51 (43) = happyShift action_21
action_51 (46) = happyShift action_22
action_51 (47) = happyShift action_23
action_51 (50) = happyShift action_24
action_51 (63) = happyShift action_25
action_51 (70) = happyShift action_26
action_51 (75) = happyShift action_27
action_51 (76) = happyShift action_28
action_51 (77) = happyShift action_29
action_51 (5) = happyGoto action_76
action_51 (6) = happyGoto action_3
action_51 (7) = happyGoto action_4
action_51 (8) = happyGoto action_5
action_51 (10) = happyGoto action_6
action_51 (11) = happyGoto action_7
action_51 (13) = happyGoto action_8
action_51 (14) = happyGoto action_9
action_51 (15) = happyGoto action_10
action_51 (16) = happyGoto action_11
action_51 (18) = happyGoto action_12
action_51 (19) = happyGoto action_13
action_51 (20) = happyGoto action_14
action_51 (21) = happyGoto action_15
action_51 (22) = happyGoto action_16
action_51 (23) = happyGoto action_17
action_51 (25) = happyGoto action_18
action_51 _ = happyFail

action_52 (38) = happyShift action_19
action_52 (42) = happyShift action_20
action_52 (43) = happyShift action_21
action_52 (46) = happyShift action_22
action_52 (47) = happyShift action_23
action_52 (50) = happyShift action_24
action_52 (63) = happyShift action_25
action_52 (70) = happyShift action_26
action_52 (75) = happyShift action_27
action_52 (76) = happyShift action_28
action_52 (77) = happyShift action_29
action_52 (5) = happyGoto action_75
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_4
action_52 (8) = happyGoto action_5
action_52 (10) = happyGoto action_6
action_52 (11) = happyGoto action_7
action_52 (13) = happyGoto action_8
action_52 (14) = happyGoto action_9
action_52 (15) = happyGoto action_10
action_52 (16) = happyGoto action_11
action_52 (18) = happyGoto action_12
action_52 (19) = happyGoto action_13
action_52 (20) = happyGoto action_14
action_52 (21) = happyGoto action_15
action_52 (22) = happyGoto action_16
action_52 (23) = happyGoto action_17
action_52 (25) = happyGoto action_18
action_52 _ = happyFail

action_53 (38) = happyShift action_19
action_53 (42) = happyShift action_20
action_53 (43) = happyShift action_21
action_53 (46) = happyShift action_22
action_53 (47) = happyShift action_23
action_53 (50) = happyShift action_24
action_53 (63) = happyShift action_25
action_53 (70) = happyShift action_26
action_53 (75) = happyShift action_27
action_53 (76) = happyShift action_28
action_53 (77) = happyShift action_29
action_53 (5) = happyGoto action_74
action_53 (6) = happyGoto action_3
action_53 (7) = happyGoto action_4
action_53 (8) = happyGoto action_5
action_53 (10) = happyGoto action_6
action_53 (11) = happyGoto action_7
action_53 (13) = happyGoto action_8
action_53 (14) = happyGoto action_9
action_53 (15) = happyGoto action_10
action_53 (16) = happyGoto action_11
action_53 (18) = happyGoto action_12
action_53 (19) = happyGoto action_13
action_53 (20) = happyGoto action_14
action_53 (21) = happyGoto action_15
action_53 (22) = happyGoto action_16
action_53 (23) = happyGoto action_17
action_53 (25) = happyGoto action_18
action_53 _ = happyFail

action_54 (38) = happyShift action_19
action_54 (42) = happyShift action_20
action_54 (43) = happyShift action_21
action_54 (46) = happyShift action_22
action_54 (47) = happyShift action_23
action_54 (50) = happyShift action_24
action_54 (63) = happyShift action_25
action_54 (70) = happyShift action_26
action_54 (75) = happyShift action_27
action_54 (76) = happyShift action_28
action_54 (77) = happyShift action_29
action_54 (5) = happyGoto action_73
action_54 (6) = happyGoto action_3
action_54 (7) = happyGoto action_4
action_54 (8) = happyGoto action_5
action_54 (10) = happyGoto action_6
action_54 (11) = happyGoto action_7
action_54 (13) = happyGoto action_8
action_54 (14) = happyGoto action_9
action_54 (15) = happyGoto action_10
action_54 (16) = happyGoto action_11
action_54 (18) = happyGoto action_12
action_54 (19) = happyGoto action_13
action_54 (20) = happyGoto action_14
action_54 (21) = happyGoto action_15
action_54 (22) = happyGoto action_16
action_54 (23) = happyGoto action_17
action_54 (25) = happyGoto action_18
action_54 _ = happyFail

action_55 (38) = happyShift action_19
action_55 (42) = happyShift action_20
action_55 (43) = happyShift action_21
action_55 (46) = happyShift action_22
action_55 (47) = happyShift action_23
action_55 (50) = happyShift action_24
action_55 (63) = happyShift action_25
action_55 (70) = happyShift action_26
action_55 (75) = happyShift action_27
action_55 (76) = happyShift action_28
action_55 (77) = happyShift action_29
action_55 (5) = happyGoto action_72
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_4
action_55 (8) = happyGoto action_5
action_55 (10) = happyGoto action_6
action_55 (11) = happyGoto action_7
action_55 (13) = happyGoto action_8
action_55 (14) = happyGoto action_9
action_55 (15) = happyGoto action_10
action_55 (16) = happyGoto action_11
action_55 (18) = happyGoto action_12
action_55 (19) = happyGoto action_13
action_55 (20) = happyGoto action_14
action_55 (21) = happyGoto action_15
action_55 (22) = happyGoto action_16
action_55 (23) = happyGoto action_17
action_55 (25) = happyGoto action_18
action_55 _ = happyFail

action_56 (38) = happyShift action_19
action_56 (42) = happyShift action_20
action_56 (43) = happyShift action_21
action_56 (46) = happyShift action_22
action_56 (47) = happyShift action_23
action_56 (50) = happyShift action_24
action_56 (63) = happyShift action_25
action_56 (70) = happyShift action_26
action_56 (75) = happyShift action_27
action_56 (76) = happyShift action_28
action_56 (77) = happyShift action_29
action_56 (5) = happyGoto action_71
action_56 (6) = happyGoto action_3
action_56 (7) = happyGoto action_4
action_56 (8) = happyGoto action_5
action_56 (10) = happyGoto action_6
action_56 (11) = happyGoto action_7
action_56 (13) = happyGoto action_8
action_56 (14) = happyGoto action_9
action_56 (15) = happyGoto action_10
action_56 (16) = happyGoto action_11
action_56 (18) = happyGoto action_12
action_56 (19) = happyGoto action_13
action_56 (20) = happyGoto action_14
action_56 (21) = happyGoto action_15
action_56 (22) = happyGoto action_16
action_56 (23) = happyGoto action_17
action_56 (25) = happyGoto action_18
action_56 _ = happyFail

action_57 (38) = happyShift action_19
action_57 (42) = happyShift action_20
action_57 (43) = happyShift action_21
action_57 (46) = happyShift action_22
action_57 (47) = happyShift action_23
action_57 (50) = happyShift action_24
action_57 (63) = happyShift action_25
action_57 (70) = happyShift action_26
action_57 (75) = happyShift action_27
action_57 (76) = happyShift action_28
action_57 (77) = happyShift action_29
action_57 (5) = happyGoto action_70
action_57 (6) = happyGoto action_3
action_57 (7) = happyGoto action_4
action_57 (8) = happyGoto action_5
action_57 (10) = happyGoto action_6
action_57 (11) = happyGoto action_7
action_57 (13) = happyGoto action_8
action_57 (14) = happyGoto action_9
action_57 (15) = happyGoto action_10
action_57 (16) = happyGoto action_11
action_57 (18) = happyGoto action_12
action_57 (19) = happyGoto action_13
action_57 (20) = happyGoto action_14
action_57 (21) = happyGoto action_15
action_57 (22) = happyGoto action_16
action_57 (23) = happyGoto action_17
action_57 (25) = happyGoto action_18
action_57 _ = happyFail

action_58 (38) = happyShift action_19
action_58 (42) = happyShift action_20
action_58 (43) = happyShift action_21
action_58 (46) = happyShift action_22
action_58 (47) = happyShift action_23
action_58 (50) = happyShift action_24
action_58 (63) = happyShift action_25
action_58 (70) = happyShift action_26
action_58 (75) = happyShift action_27
action_58 (76) = happyShift action_28
action_58 (77) = happyShift action_29
action_58 (5) = happyGoto action_69
action_58 (6) = happyGoto action_3
action_58 (7) = happyGoto action_4
action_58 (8) = happyGoto action_5
action_58 (10) = happyGoto action_6
action_58 (11) = happyGoto action_7
action_58 (13) = happyGoto action_8
action_58 (14) = happyGoto action_9
action_58 (15) = happyGoto action_10
action_58 (16) = happyGoto action_11
action_58 (18) = happyGoto action_12
action_58 (19) = happyGoto action_13
action_58 (20) = happyGoto action_14
action_58 (21) = happyGoto action_15
action_58 (22) = happyGoto action_16
action_58 (23) = happyGoto action_17
action_58 (25) = happyGoto action_18
action_58 _ = happyFail

action_59 (38) = happyShift action_19
action_59 (42) = happyShift action_20
action_59 (43) = happyShift action_21
action_59 (46) = happyShift action_22
action_59 (47) = happyShift action_23
action_59 (50) = happyShift action_24
action_59 (63) = happyShift action_25
action_59 (70) = happyShift action_26
action_59 (75) = happyShift action_27
action_59 (76) = happyShift action_28
action_59 (77) = happyShift action_29
action_59 (5) = happyGoto action_68
action_59 (6) = happyGoto action_3
action_59 (7) = happyGoto action_4
action_59 (8) = happyGoto action_5
action_59 (10) = happyGoto action_6
action_59 (11) = happyGoto action_7
action_59 (13) = happyGoto action_8
action_59 (14) = happyGoto action_9
action_59 (15) = happyGoto action_10
action_59 (16) = happyGoto action_11
action_59 (18) = happyGoto action_12
action_59 (19) = happyGoto action_13
action_59 (20) = happyGoto action_14
action_59 (21) = happyGoto action_15
action_59 (22) = happyGoto action_16
action_59 (23) = happyGoto action_17
action_59 (25) = happyGoto action_18
action_59 _ = happyFail

action_60 (38) = happyShift action_19
action_60 (42) = happyShift action_20
action_60 (43) = happyShift action_21
action_60 (46) = happyShift action_22
action_60 (47) = happyShift action_23
action_60 (50) = happyShift action_24
action_60 (63) = happyShift action_25
action_60 (70) = happyShift action_26
action_60 (75) = happyShift action_27
action_60 (76) = happyShift action_28
action_60 (77) = happyShift action_29
action_60 (5) = happyGoto action_67
action_60 (6) = happyGoto action_3
action_60 (7) = happyGoto action_4
action_60 (8) = happyGoto action_5
action_60 (10) = happyGoto action_6
action_60 (11) = happyGoto action_7
action_60 (13) = happyGoto action_8
action_60 (14) = happyGoto action_9
action_60 (15) = happyGoto action_10
action_60 (16) = happyGoto action_11
action_60 (18) = happyGoto action_12
action_60 (19) = happyGoto action_13
action_60 (20) = happyGoto action_14
action_60 (21) = happyGoto action_15
action_60 (22) = happyGoto action_16
action_60 (23) = happyGoto action_17
action_60 (25) = happyGoto action_18
action_60 _ = happyFail

action_61 (38) = happyShift action_19
action_61 (42) = happyShift action_20
action_61 (43) = happyShift action_21
action_61 (46) = happyShift action_22
action_61 (47) = happyShift action_23
action_61 (50) = happyShift action_24
action_61 (63) = happyShift action_25
action_61 (70) = happyShift action_26
action_61 (75) = happyShift action_27
action_61 (76) = happyShift action_28
action_61 (77) = happyShift action_29
action_61 (5) = happyGoto action_66
action_61 (6) = happyGoto action_3
action_61 (7) = happyGoto action_4
action_61 (8) = happyGoto action_5
action_61 (10) = happyGoto action_6
action_61 (11) = happyGoto action_7
action_61 (13) = happyGoto action_8
action_61 (14) = happyGoto action_9
action_61 (15) = happyGoto action_10
action_61 (16) = happyGoto action_11
action_61 (18) = happyGoto action_12
action_61 (19) = happyGoto action_13
action_61 (20) = happyGoto action_14
action_61 (21) = happyGoto action_15
action_61 (22) = happyGoto action_16
action_61 (23) = happyGoto action_17
action_61 (25) = happyGoto action_18
action_61 _ = happyFail

action_62 (38) = happyShift action_19
action_62 (42) = happyShift action_20
action_62 (43) = happyShift action_21
action_62 (46) = happyShift action_22
action_62 (47) = happyShift action_23
action_62 (50) = happyShift action_24
action_62 (63) = happyShift action_25
action_62 (70) = happyShift action_26
action_62 (75) = happyShift action_27
action_62 (76) = happyShift action_28
action_62 (77) = happyShift action_29
action_62 (5) = happyGoto action_65
action_62 (6) = happyGoto action_3
action_62 (7) = happyGoto action_4
action_62 (8) = happyGoto action_5
action_62 (10) = happyGoto action_6
action_62 (11) = happyGoto action_7
action_62 (13) = happyGoto action_8
action_62 (14) = happyGoto action_9
action_62 (15) = happyGoto action_10
action_62 (16) = happyGoto action_11
action_62 (18) = happyGoto action_12
action_62 (19) = happyGoto action_13
action_62 (20) = happyGoto action_14
action_62 (21) = happyGoto action_15
action_62 (22) = happyGoto action_16
action_62 (23) = happyGoto action_17
action_62 (25) = happyGoto action_18
action_62 _ = happyFail

action_63 (38) = happyShift action_19
action_63 (42) = happyShift action_20
action_63 (43) = happyShift action_21
action_63 (46) = happyShift action_22
action_63 (47) = happyShift action_23
action_63 (50) = happyShift action_24
action_63 (63) = happyShift action_25
action_63 (70) = happyShift action_26
action_63 (75) = happyShift action_27
action_63 (76) = happyShift action_28
action_63 (77) = happyShift action_29
action_63 (5) = happyGoto action_64
action_63 (6) = happyGoto action_3
action_63 (7) = happyGoto action_4
action_63 (8) = happyGoto action_5
action_63 (10) = happyGoto action_6
action_63 (11) = happyGoto action_7
action_63 (13) = happyGoto action_8
action_63 (14) = happyGoto action_9
action_63 (15) = happyGoto action_10
action_63 (16) = happyGoto action_11
action_63 (18) = happyGoto action_12
action_63 (19) = happyGoto action_13
action_63 (20) = happyGoto action_14
action_63 (21) = happyGoto action_15
action_63 (22) = happyGoto action_16
action_63 (23) = happyGoto action_17
action_63 (25) = happyGoto action_18
action_63 _ = happyFail

action_64 (61) = happyShift action_60
action_64 (62) = happyShift action_61
action_64 _ = happyReduce_35

action_65 (61) = happyShift action_60
action_65 (62) = happyShift action_61
action_65 _ = happyReduce_36

action_66 _ = happyReduce_38

action_67 _ = happyReduce_37

action_68 (55) = happyFail
action_68 (56) = happyFail
action_68 (57) = happyFail
action_68 (58) = happyFail
action_68 (59) = happyFail
action_68 (60) = happyFail
action_68 (61) = happyShift action_60
action_68 (62) = happyShift action_61
action_68 (63) = happyShift action_62
action_68 (64) = happyShift action_63
action_68 _ = happyReduce_39

action_69 (55) = happyFail
action_69 (56) = happyFail
action_69 (57) = happyFail
action_69 (58) = happyFail
action_69 (59) = happyFail
action_69 (60) = happyFail
action_69 (61) = happyShift action_60
action_69 (62) = happyShift action_61
action_69 (63) = happyShift action_62
action_69 (64) = happyShift action_63
action_69 _ = happyReduce_40

action_70 (55) = happyFail
action_70 (56) = happyFail
action_70 (57) = happyFail
action_70 (58) = happyFail
action_70 (59) = happyFail
action_70 (60) = happyFail
action_70 (61) = happyShift action_60
action_70 (62) = happyShift action_61
action_70 (63) = happyShift action_62
action_70 (64) = happyShift action_63
action_70 _ = happyReduce_42

action_71 (55) = happyFail
action_71 (56) = happyFail
action_71 (57) = happyFail
action_71 (58) = happyFail
action_71 (59) = happyFail
action_71 (60) = happyFail
action_71 (61) = happyShift action_60
action_71 (62) = happyShift action_61
action_71 (63) = happyShift action_62
action_71 (64) = happyShift action_63
action_71 _ = happyReduce_44

action_72 (55) = happyFail
action_72 (56) = happyFail
action_72 (57) = happyFail
action_72 (58) = happyFail
action_72 (59) = happyFail
action_72 (60) = happyFail
action_72 (61) = happyShift action_60
action_72 (62) = happyShift action_61
action_72 (63) = happyShift action_62
action_72 (64) = happyShift action_63
action_72 _ = happyReduce_41

action_73 (55) = happyFail
action_73 (56) = happyFail
action_73 (57) = happyFail
action_73 (58) = happyFail
action_73 (59) = happyFail
action_73 (60) = happyFail
action_73 (61) = happyShift action_60
action_73 (62) = happyShift action_61
action_73 (63) = happyShift action_62
action_73 (64) = happyShift action_63
action_73 _ = happyReduce_43

action_74 (53) = happyFail
action_74 (54) = happyFail
action_74 (55) = happyShift action_54
action_74 (56) = happyShift action_55
action_74 (57) = happyShift action_56
action_74 (58) = happyShift action_57
action_74 (59) = happyShift action_58
action_74 (60) = happyShift action_59
action_74 (61) = happyShift action_60
action_74 (62) = happyShift action_61
action_74 (63) = happyShift action_62
action_74 (64) = happyShift action_63
action_74 _ = happyReduce_45

action_75 (53) = happyFail
action_75 (54) = happyFail
action_75 (55) = happyShift action_54
action_75 (56) = happyShift action_55
action_75 (57) = happyShift action_56
action_75 (58) = happyShift action_57
action_75 (59) = happyShift action_58
action_75 (60) = happyShift action_59
action_75 (61) = happyShift action_60
action_75 (62) = happyShift action_61
action_75 (63) = happyShift action_62
action_75 (64) = happyShift action_63
action_75 _ = happyReduce_46

action_76 (53) = happyShift action_52
action_76 (54) = happyShift action_53
action_76 (55) = happyShift action_54
action_76 (56) = happyShift action_55
action_76 (57) = happyShift action_56
action_76 (58) = happyShift action_57
action_76 (59) = happyShift action_58
action_76 (60) = happyShift action_59
action_76 (61) = happyShift action_60
action_76 (62) = happyShift action_61
action_76 (63) = happyShift action_62
action_76 (64) = happyShift action_63
action_76 _ = happyReduce_52

action_77 (53) = happyShift action_52
action_77 (54) = happyShift action_53
action_77 (55) = happyShift action_54
action_77 (56) = happyShift action_55
action_77 (57) = happyShift action_56
action_77 (58) = happyShift action_57
action_77 (59) = happyShift action_58
action_77 (60) = happyShift action_59
action_77 (61) = happyShift action_60
action_77 (62) = happyShift action_61
action_77 (63) = happyShift action_62
action_77 (64) = happyShift action_63
action_77 (69) = happyShift action_111
action_77 _ = happyFail

action_78 _ = happyReduce_24

action_79 (70) = happyShift action_110
action_79 _ = happyFail

action_80 (52) = happyShift action_108
action_80 (73) = happyShift action_109
action_80 _ = happyFail

action_81 (60) = happyShift action_107
action_81 _ = happyFail

action_82 _ = happyReduce_64

action_83 (38) = happyShift action_19
action_83 (42) = happyShift action_20
action_83 (43) = happyShift action_21
action_83 (46) = happyShift action_22
action_83 (47) = happyShift action_23
action_83 (50) = happyShift action_24
action_83 (63) = happyShift action_25
action_83 (70) = happyShift action_26
action_83 (75) = happyShift action_27
action_83 (76) = happyShift action_28
action_83 (77) = happyShift action_29
action_83 (5) = happyGoto action_105
action_83 (6) = happyGoto action_3
action_83 (7) = happyGoto action_4
action_83 (8) = happyGoto action_5
action_83 (10) = happyGoto action_6
action_83 (11) = happyGoto action_7
action_83 (13) = happyGoto action_8
action_83 (14) = happyGoto action_9
action_83 (15) = happyGoto action_10
action_83 (16) = happyGoto action_11
action_83 (18) = happyGoto action_12
action_83 (19) = happyGoto action_13
action_83 (20) = happyGoto action_14
action_83 (21) = happyGoto action_15
action_83 (22) = happyGoto action_16
action_83 (23) = happyGoto action_17
action_83 (24) = happyGoto action_106
action_83 (25) = happyGoto action_18
action_83 _ = happyReduce_57

action_84 (38) = happyShift action_19
action_84 (42) = happyShift action_20
action_84 (43) = happyShift action_21
action_84 (46) = happyShift action_22
action_84 (47) = happyShift action_23
action_84 (50) = happyShift action_24
action_84 (63) = happyShift action_25
action_84 (70) = happyShift action_26
action_84 (75) = happyShift action_27
action_84 (76) = happyShift action_28
action_84 (77) = happyShift action_29
action_84 (5) = happyGoto action_104
action_84 (6) = happyGoto action_3
action_84 (7) = happyGoto action_4
action_84 (8) = happyGoto action_5
action_84 (10) = happyGoto action_6
action_84 (11) = happyGoto action_7
action_84 (13) = happyGoto action_8
action_84 (14) = happyGoto action_9
action_84 (15) = happyGoto action_10
action_84 (16) = happyGoto action_11
action_84 (18) = happyGoto action_12
action_84 (19) = happyGoto action_13
action_84 (20) = happyGoto action_14
action_84 (21) = happyGoto action_15
action_84 (22) = happyGoto action_16
action_84 (23) = happyGoto action_17
action_84 (25) = happyGoto action_18
action_84 _ = happyFail

action_85 (38) = happyShift action_19
action_85 (42) = happyShift action_20
action_85 (43) = happyShift action_21
action_85 (46) = happyShift action_22
action_85 (47) = happyShift action_23
action_85 (50) = happyShift action_24
action_85 (63) = happyShift action_25
action_85 (70) = happyShift action_26
action_85 (75) = happyShift action_27
action_85 (76) = happyShift action_28
action_85 (77) = happyShift action_29
action_85 (5) = happyGoto action_103
action_85 (6) = happyGoto action_3
action_85 (7) = happyGoto action_4
action_85 (8) = happyGoto action_5
action_85 (10) = happyGoto action_6
action_85 (11) = happyGoto action_7
action_85 (13) = happyGoto action_8
action_85 (14) = happyGoto action_9
action_85 (15) = happyGoto action_10
action_85 (16) = happyGoto action_11
action_85 (18) = happyGoto action_12
action_85 (19) = happyGoto action_13
action_85 (20) = happyGoto action_14
action_85 (21) = happyGoto action_15
action_85 (22) = happyGoto action_16
action_85 (23) = happyGoto action_17
action_85 (25) = happyGoto action_18
action_85 _ = happyFail

action_86 (38) = happyShift action_19
action_86 (42) = happyShift action_20
action_86 (43) = happyShift action_21
action_86 (46) = happyShift action_22
action_86 (47) = happyShift action_23
action_86 (50) = happyShift action_24
action_86 (63) = happyShift action_25
action_86 (70) = happyShift action_26
action_86 (75) = happyShift action_27
action_86 (76) = happyShift action_28
action_86 (77) = happyShift action_29
action_86 (5) = happyGoto action_102
action_86 (6) = happyGoto action_3
action_86 (7) = happyGoto action_4
action_86 (8) = happyGoto action_5
action_86 (10) = happyGoto action_6
action_86 (11) = happyGoto action_7
action_86 (13) = happyGoto action_8
action_86 (14) = happyGoto action_9
action_86 (15) = happyGoto action_10
action_86 (16) = happyGoto action_11
action_86 (18) = happyGoto action_12
action_86 (19) = happyGoto action_13
action_86 (20) = happyGoto action_14
action_86 (21) = happyGoto action_15
action_86 (22) = happyGoto action_16
action_86 (23) = happyGoto action_17
action_86 (25) = happyGoto action_18
action_86 _ = happyFail

action_87 _ = happyReduce_60

action_88 (38) = happyShift action_19
action_88 (42) = happyShift action_20
action_88 (43) = happyShift action_21
action_88 (46) = happyShift action_22
action_88 (47) = happyShift action_23
action_88 (50) = happyShift action_24
action_88 (63) = happyShift action_25
action_88 (70) = happyShift action_26
action_88 (75) = happyShift action_27
action_88 (76) = happyShift action_28
action_88 (77) = happyShift action_29
action_88 (5) = happyGoto action_101
action_88 (6) = happyGoto action_3
action_88 (7) = happyGoto action_4
action_88 (8) = happyGoto action_5
action_88 (10) = happyGoto action_6
action_88 (11) = happyGoto action_7
action_88 (13) = happyGoto action_8
action_88 (14) = happyGoto action_9
action_88 (15) = happyGoto action_10
action_88 (16) = happyGoto action_11
action_88 (18) = happyGoto action_12
action_88 (19) = happyGoto action_13
action_88 (20) = happyGoto action_14
action_88 (21) = happyGoto action_15
action_88 (22) = happyGoto action_16
action_88 (23) = happyGoto action_17
action_88 (25) = happyGoto action_18
action_88 _ = happyFail

action_89 (53) = happyShift action_52
action_89 (54) = happyShift action_53
action_89 (55) = happyShift action_54
action_89 (56) = happyShift action_55
action_89 (57) = happyShift action_56
action_89 (58) = happyShift action_57
action_89 (59) = happyShift action_58
action_89 (60) = happyShift action_59
action_89 (61) = happyShift action_60
action_89 (62) = happyShift action_61
action_89 (63) = happyShift action_62
action_89 (64) = happyShift action_63
action_89 _ = happyReduce_33

action_90 (71) = happyShift action_99
action_90 (74) = happyShift action_100
action_90 _ = happyFail

action_91 (53) = happyShift action_52
action_91 (54) = happyShift action_53
action_91 (55) = happyShift action_54
action_91 (56) = happyShift action_55
action_91 (57) = happyShift action_56
action_91 (58) = happyShift action_57
action_91 (59) = happyShift action_58
action_91 (60) = happyShift action_59
action_91 (61) = happyShift action_60
action_91 (62) = happyShift action_61
action_91 (63) = happyShift action_62
action_91 (64) = happyShift action_63
action_91 (69) = happyShift action_98
action_91 _ = happyFail

action_92 (67) = happyShift action_96
action_92 (74) = happyShift action_97
action_92 _ = happyFail

action_93 (60) = happyShift action_95
action_93 _ = happyFail

action_94 _ = happyReduce_23

action_95 (38) = happyShift action_19
action_95 (42) = happyShift action_20
action_95 (43) = happyShift action_21
action_95 (46) = happyShift action_22
action_95 (47) = happyShift action_23
action_95 (50) = happyShift action_24
action_95 (63) = happyShift action_25
action_95 (70) = happyShift action_26
action_95 (75) = happyShift action_27
action_95 (76) = happyShift action_28
action_95 (77) = happyShift action_29
action_95 (5) = happyGoto action_128
action_95 (6) = happyGoto action_3
action_95 (7) = happyGoto action_4
action_95 (8) = happyGoto action_5
action_95 (10) = happyGoto action_6
action_95 (11) = happyGoto action_7
action_95 (13) = happyGoto action_8
action_95 (14) = happyGoto action_9
action_95 (15) = happyGoto action_10
action_95 (16) = happyGoto action_11
action_95 (18) = happyGoto action_12
action_95 (19) = happyGoto action_13
action_95 (20) = happyGoto action_14
action_95 (21) = happyGoto action_15
action_95 (22) = happyGoto action_16
action_95 (23) = happyGoto action_17
action_95 (25) = happyGoto action_18
action_95 _ = happyFail

action_96 _ = happyReduce_47

action_97 (77) = happyShift action_127
action_97 _ = happyFail

action_98 (39) = happyShift action_126
action_98 _ = happyReduce_25

action_99 _ = happyReduce_31

action_100 (38) = happyShift action_19
action_100 (42) = happyShift action_20
action_100 (43) = happyShift action_21
action_100 (46) = happyShift action_22
action_100 (47) = happyShift action_23
action_100 (50) = happyShift action_24
action_100 (63) = happyShift action_25
action_100 (70) = happyShift action_26
action_100 (75) = happyShift action_27
action_100 (76) = happyShift action_28
action_100 (77) = happyShift action_29
action_100 (5) = happyGoto action_125
action_100 (6) = happyGoto action_3
action_100 (7) = happyGoto action_4
action_100 (8) = happyGoto action_5
action_100 (10) = happyGoto action_6
action_100 (11) = happyGoto action_7
action_100 (13) = happyGoto action_8
action_100 (14) = happyGoto action_9
action_100 (15) = happyGoto action_10
action_100 (16) = happyGoto action_11
action_100 (18) = happyGoto action_12
action_100 (19) = happyGoto action_13
action_100 (20) = happyGoto action_14
action_100 (21) = happyGoto action_15
action_100 (22) = happyGoto action_16
action_100 (23) = happyGoto action_17
action_100 (25) = happyGoto action_18
action_100 _ = happyFail

action_101 (53) = happyShift action_52
action_101 (54) = happyShift action_53
action_101 (55) = happyShift action_54
action_101 (56) = happyShift action_55
action_101 (57) = happyShift action_56
action_101 (58) = happyShift action_57
action_101 (59) = happyShift action_58
action_101 (60) = happyShift action_59
action_101 (61) = happyShift action_60
action_101 (62) = happyShift action_61
action_101 (63) = happyShift action_62
action_101 (64) = happyShift action_63
action_101 (9) = happyGoto action_124
action_101 _ = happyReduce_28

action_102 (53) = happyShift action_52
action_102 (54) = happyShift action_53
action_102 (55) = happyShift action_54
action_102 (56) = happyShift action_55
action_102 (57) = happyShift action_56
action_102 (58) = happyShift action_57
action_102 (59) = happyShift action_58
action_102 (60) = happyShift action_59
action_102 (61) = happyShift action_60
action_102 (62) = happyShift action_61
action_102 (63) = happyShift action_62
action_102 (64) = happyShift action_63
action_102 _ = happyReduce_53

action_103 (53) = happyShift action_52
action_103 (54) = happyShift action_53
action_103 (55) = happyShift action_54
action_103 (56) = happyShift action_55
action_103 (57) = happyShift action_56
action_103 (58) = happyShift action_57
action_103 (59) = happyShift action_58
action_103 (60) = happyShift action_59
action_103 (61) = happyShift action_60
action_103 (62) = happyShift action_61
action_103 (63) = happyShift action_62
action_103 (64) = happyShift action_63
action_103 _ = happyReduce_54

action_104 (45) = happyShift action_123
action_104 (53) = happyShift action_52
action_104 (54) = happyShift action_53
action_104 (55) = happyShift action_54
action_104 (56) = happyShift action_55
action_104 (57) = happyShift action_56
action_104 (58) = happyShift action_57
action_104 (59) = happyShift action_58
action_104 (60) = happyShift action_59
action_104 (61) = happyShift action_60
action_104 (62) = happyShift action_61
action_104 (63) = happyShift action_62
action_104 (64) = happyShift action_63
action_104 _ = happyFail

action_105 (53) = happyShift action_52
action_105 (54) = happyShift action_53
action_105 (55) = happyShift action_54
action_105 (56) = happyShift action_55
action_105 (57) = happyShift action_56
action_105 (58) = happyShift action_57
action_105 (59) = happyShift action_58
action_105 (60) = happyShift action_59
action_105 (61) = happyShift action_60
action_105 (62) = happyShift action_61
action_105 (63) = happyShift action_62
action_105 (64) = happyShift action_63
action_105 _ = happyReduce_58

action_106 (40) = happyShift action_121
action_106 (72) = happyShift action_122
action_106 _ = happyFail

action_107 (51) = happyShift action_118
action_107 (66) = happyShift action_119
action_107 (77) = happyShift action_120
action_107 (31) = happyGoto action_117
action_107 _ = happyFail

action_108 (38) = happyShift action_19
action_108 (42) = happyShift action_20
action_108 (43) = happyShift action_21
action_108 (46) = happyShift action_22
action_108 (47) = happyShift action_23
action_108 (50) = happyShift action_24
action_108 (63) = happyShift action_25
action_108 (70) = happyShift action_26
action_108 (75) = happyShift action_27
action_108 (76) = happyShift action_28
action_108 (77) = happyShift action_29
action_108 (5) = happyGoto action_116
action_108 (6) = happyGoto action_3
action_108 (7) = happyGoto action_4
action_108 (8) = happyGoto action_5
action_108 (10) = happyGoto action_6
action_108 (11) = happyGoto action_7
action_108 (13) = happyGoto action_8
action_108 (14) = happyGoto action_9
action_108 (15) = happyGoto action_10
action_108 (16) = happyGoto action_11
action_108 (18) = happyGoto action_12
action_108 (19) = happyGoto action_13
action_108 (20) = happyGoto action_14
action_108 (21) = happyGoto action_15
action_108 (22) = happyGoto action_16
action_108 (23) = happyGoto action_17
action_108 (25) = happyGoto action_18
action_108 _ = happyFail

action_109 (77) = happyShift action_115
action_109 _ = happyFail

action_110 (77) = happyShift action_114
action_110 (32) = happyGoto action_112
action_110 (33) = happyGoto action_113
action_110 _ = happyReduce_74

action_111 _ = happyReduce_26

action_112 (71) = happyShift action_140
action_112 _ = happyFail

action_113 (74) = happyShift action_139
action_113 _ = happyReduce_75

action_114 (73) = happyShift action_138
action_114 _ = happyFail

action_115 (52) = happyShift action_137
action_115 _ = happyFail

action_116 (53) = happyShift action_52
action_116 (54) = happyShift action_53
action_116 (55) = happyShift action_54
action_116 (56) = happyShift action_55
action_116 (57) = happyShift action_56
action_116 (58) = happyShift action_57
action_116 (59) = happyShift action_58
action_116 (60) = happyShift action_59
action_116 (61) = happyShift action_60
action_116 (62) = happyShift action_61
action_116 (63) = happyShift action_62
action_116 (64) = happyShift action_63
action_116 _ = happyReduce_78

action_117 _ = happyReduce_70

action_118 (39) = happyShift action_136
action_118 _ = happyFail

action_119 (77) = happyShift action_114
action_119 (32) = happyGoto action_135
action_119 (33) = happyGoto action_113
action_119 _ = happyReduce_74

action_120 _ = happyReduce_71

action_121 _ = happyReduce_56

action_122 (38) = happyShift action_19
action_122 (42) = happyShift action_20
action_122 (43) = happyShift action_21
action_122 (46) = happyShift action_22
action_122 (47) = happyShift action_23
action_122 (50) = happyShift action_24
action_122 (63) = happyShift action_25
action_122 (70) = happyShift action_26
action_122 (75) = happyShift action_27
action_122 (76) = happyShift action_28
action_122 (77) = happyShift action_29
action_122 (5) = happyGoto action_134
action_122 (6) = happyGoto action_3
action_122 (7) = happyGoto action_4
action_122 (8) = happyGoto action_5
action_122 (10) = happyGoto action_6
action_122 (11) = happyGoto action_7
action_122 (13) = happyGoto action_8
action_122 (14) = happyGoto action_9
action_122 (15) = happyGoto action_10
action_122 (16) = happyGoto action_11
action_122 (18) = happyGoto action_12
action_122 (19) = happyGoto action_13
action_122 (20) = happyGoto action_14
action_122 (21) = happyGoto action_15
action_122 (22) = happyGoto action_16
action_122 (23) = happyGoto action_17
action_122 (25) = happyGoto action_18
action_122 _ = happyFail

action_123 (38) = happyShift action_19
action_123 (42) = happyShift action_20
action_123 (43) = happyShift action_21
action_123 (46) = happyShift action_22
action_123 (47) = happyShift action_23
action_123 (50) = happyShift action_24
action_123 (63) = happyShift action_25
action_123 (70) = happyShift action_26
action_123 (75) = happyShift action_27
action_123 (76) = happyShift action_28
action_123 (77) = happyShift action_29
action_123 (5) = happyGoto action_133
action_123 (6) = happyGoto action_3
action_123 (7) = happyGoto action_4
action_123 (8) = happyGoto action_5
action_123 (10) = happyGoto action_6
action_123 (11) = happyGoto action_7
action_123 (13) = happyGoto action_8
action_123 (14) = happyGoto action_9
action_123 (15) = happyGoto action_10
action_123 (16) = happyGoto action_11
action_123 (18) = happyGoto action_12
action_123 (19) = happyGoto action_13
action_123 (20) = happyGoto action_14
action_123 (21) = happyGoto action_15
action_123 (22) = happyGoto action_16
action_123 (23) = happyGoto action_17
action_123 (25) = happyGoto action_18
action_123 _ = happyFail

action_124 (71) = happyShift action_131
action_124 (72) = happyShift action_132
action_124 _ = happyFail

action_125 (53) = happyShift action_52
action_125 (54) = happyShift action_53
action_125 (55) = happyShift action_54
action_125 (56) = happyShift action_55
action_125 (57) = happyShift action_56
action_125 (58) = happyShift action_57
action_125 (59) = happyShift action_58
action_125 (60) = happyShift action_59
action_125 (61) = happyShift action_60
action_125 (62) = happyShift action_61
action_125 (63) = happyShift action_62
action_125 (64) = happyShift action_63
action_125 _ = happyReduce_34

action_126 (38) = happyShift action_19
action_126 (42) = happyShift action_20
action_126 (43) = happyShift action_21
action_126 (46) = happyShift action_22
action_126 (47) = happyShift action_23
action_126 (50) = happyShift action_24
action_126 (63) = happyShift action_25
action_126 (70) = happyShift action_26
action_126 (75) = happyShift action_27
action_126 (76) = happyShift action_28
action_126 (77) = happyShift action_29
action_126 (5) = happyGoto action_130
action_126 (6) = happyGoto action_3
action_126 (7) = happyGoto action_4
action_126 (8) = happyGoto action_5
action_126 (10) = happyGoto action_6
action_126 (11) = happyGoto action_7
action_126 (13) = happyGoto action_8
action_126 (14) = happyGoto action_9
action_126 (15) = happyGoto action_10
action_126 (16) = happyGoto action_11
action_126 (18) = happyGoto action_12
action_126 (19) = happyGoto action_13
action_126 (20) = happyGoto action_14
action_126 (21) = happyGoto action_15
action_126 (22) = happyGoto action_16
action_126 (23) = happyGoto action_17
action_126 (25) = happyGoto action_18
action_126 _ = happyFail

action_127 (60) = happyShift action_129
action_127 _ = happyFail

action_128 (53) = happyShift action_52
action_128 (54) = happyShift action_53
action_128 (55) = happyShift action_54
action_128 (56) = happyShift action_55
action_128 (57) = happyShift action_56
action_128 (58) = happyShift action_57
action_128 (59) = happyShift action_58
action_128 (60) = happyShift action_59
action_128 (61) = happyShift action_60
action_128 (62) = happyShift action_61
action_128 (63) = happyShift action_62
action_128 (64) = happyShift action_63
action_128 _ = happyReduce_49

action_129 (38) = happyShift action_19
action_129 (42) = happyShift action_20
action_129 (43) = happyShift action_21
action_129 (46) = happyShift action_22
action_129 (47) = happyShift action_23
action_129 (50) = happyShift action_24
action_129 (63) = happyShift action_25
action_129 (70) = happyShift action_26
action_129 (75) = happyShift action_27
action_129 (76) = happyShift action_28
action_129 (77) = happyShift action_29
action_129 (5) = happyGoto action_150
action_129 (6) = happyGoto action_3
action_129 (7) = happyGoto action_4
action_129 (8) = happyGoto action_5
action_129 (10) = happyGoto action_6
action_129 (11) = happyGoto action_7
action_129 (13) = happyGoto action_8
action_129 (14) = happyGoto action_9
action_129 (15) = happyGoto action_10
action_129 (16) = happyGoto action_11
action_129 (18) = happyGoto action_12
action_129 (19) = happyGoto action_13
action_129 (20) = happyGoto action_14
action_129 (21) = happyGoto action_15
action_129 (22) = happyGoto action_16
action_129 (23) = happyGoto action_17
action_129 (25) = happyGoto action_18
action_129 _ = happyFail

action_130 (53) = happyShift action_52
action_130 (54) = happyShift action_53
action_130 (55) = happyShift action_54
action_130 (56) = happyShift action_55
action_130 (57) = happyShift action_56
action_130 (58) = happyShift action_57
action_130 (59) = happyShift action_58
action_130 (60) = happyShift action_59
action_130 (61) = happyShift action_60
action_130 (62) = happyShift action_61
action_130 (63) = happyShift action_62
action_130 (64) = happyShift action_63
action_130 _ = happyReduce_51

action_131 _ = happyReduce_27

action_132 (38) = happyShift action_19
action_132 (42) = happyShift action_20
action_132 (43) = happyShift action_21
action_132 (46) = happyShift action_22
action_132 (47) = happyShift action_23
action_132 (50) = happyShift action_24
action_132 (63) = happyShift action_25
action_132 (70) = happyShift action_26
action_132 (75) = happyShift action_27
action_132 (76) = happyShift action_28
action_132 (77) = happyShift action_29
action_132 (5) = happyGoto action_149
action_132 (6) = happyGoto action_3
action_132 (7) = happyGoto action_4
action_132 (8) = happyGoto action_5
action_132 (10) = happyGoto action_6
action_132 (11) = happyGoto action_7
action_132 (13) = happyGoto action_8
action_132 (14) = happyGoto action_9
action_132 (15) = happyGoto action_10
action_132 (16) = happyGoto action_11
action_132 (18) = happyGoto action_12
action_132 (19) = happyGoto action_13
action_132 (20) = happyGoto action_14
action_132 (21) = happyGoto action_15
action_132 (22) = happyGoto action_16
action_132 (23) = happyGoto action_17
action_132 (25) = happyGoto action_18
action_132 _ = happyFail

action_133 (44) = happyShift action_148
action_133 (53) = happyShift action_52
action_133 (54) = happyShift action_53
action_133 (55) = happyShift action_54
action_133 (56) = happyShift action_55
action_133 (57) = happyShift action_56
action_133 (58) = happyShift action_57
action_133 (59) = happyShift action_58
action_133 (60) = happyShift action_59
action_133 (61) = happyShift action_60
action_133 (62) = happyShift action_61
action_133 (63) = happyShift action_62
action_133 (64) = happyShift action_63
action_133 _ = happyFail

action_134 (53) = happyShift action_52
action_134 (54) = happyShift action_53
action_134 (55) = happyShift action_54
action_134 (56) = happyShift action_55
action_134 (57) = happyShift action_56
action_134 (58) = happyShift action_57
action_134 (59) = happyShift action_58
action_134 (60) = happyShift action_59
action_134 (61) = happyShift action_60
action_134 (62) = happyShift action_61
action_134 (63) = happyShift action_62
action_134 (64) = happyShift action_63
action_134 _ = happyReduce_59

action_135 (67) = happyShift action_147
action_135 _ = happyFail

action_136 (77) = happyShift action_146
action_136 _ = happyFail

action_137 (38) = happyShift action_19
action_137 (42) = happyShift action_20
action_137 (43) = happyShift action_21
action_137 (46) = happyShift action_22
action_137 (47) = happyShift action_23
action_137 (50) = happyShift action_24
action_137 (63) = happyShift action_25
action_137 (70) = happyShift action_26
action_137 (75) = happyShift action_27
action_137 (76) = happyShift action_28
action_137 (77) = happyShift action_29
action_137 (5) = happyGoto action_145
action_137 (6) = happyGoto action_3
action_137 (7) = happyGoto action_4
action_137 (8) = happyGoto action_5
action_137 (10) = happyGoto action_6
action_137 (11) = happyGoto action_7
action_137 (13) = happyGoto action_8
action_137 (14) = happyGoto action_9
action_137 (15) = happyGoto action_10
action_137 (16) = happyGoto action_11
action_137 (18) = happyGoto action_12
action_137 (19) = happyGoto action_13
action_137 (20) = happyGoto action_14
action_137 (21) = happyGoto action_15
action_137 (22) = happyGoto action_16
action_137 (23) = happyGoto action_17
action_137 (25) = happyGoto action_18
action_137 _ = happyFail

action_138 (77) = happyShift action_144
action_138 _ = happyFail

action_139 (77) = happyShift action_143
action_139 _ = happyFail

action_140 (60) = happyShift action_141
action_140 (73) = happyShift action_142
action_140 _ = happyFail

action_141 (38) = happyShift action_19
action_141 (42) = happyShift action_20
action_141 (43) = happyShift action_21
action_141 (46) = happyShift action_22
action_141 (47) = happyShift action_23
action_141 (50) = happyShift action_24
action_141 (63) = happyShift action_25
action_141 (70) = happyShift action_26
action_141 (75) = happyShift action_27
action_141 (76) = happyShift action_28
action_141 (77) = happyShift action_29
action_141 (5) = happyGoto action_154
action_141 (6) = happyGoto action_3
action_141 (7) = happyGoto action_4
action_141 (8) = happyGoto action_5
action_141 (10) = happyGoto action_6
action_141 (11) = happyGoto action_7
action_141 (13) = happyGoto action_8
action_141 (14) = happyGoto action_9
action_141 (15) = happyGoto action_10
action_141 (16) = happyGoto action_11
action_141 (18) = happyGoto action_12
action_141 (19) = happyGoto action_13
action_141 (20) = happyGoto action_14
action_141 (21) = happyGoto action_15
action_141 (22) = happyGoto action_16
action_141 (23) = happyGoto action_17
action_141 (25) = happyGoto action_18
action_141 _ = happyFail

action_142 (77) = happyShift action_153
action_142 _ = happyFail

action_143 (73) = happyShift action_152
action_143 _ = happyFail

action_144 _ = happyReduce_76

action_145 (53) = happyShift action_52
action_145 (54) = happyShift action_53
action_145 (55) = happyShift action_54
action_145 (56) = happyShift action_55
action_145 (57) = happyShift action_56
action_145 (58) = happyShift action_57
action_145 (59) = happyShift action_58
action_145 (60) = happyShift action_59
action_145 (61) = happyShift action_60
action_145 (62) = happyShift action_61
action_145 (63) = happyShift action_62
action_145 (64) = happyShift action_63
action_145 _ = happyReduce_79

action_146 _ = happyReduce_73

action_147 _ = happyReduce_72

action_148 (38) = happyShift action_19
action_148 (42) = happyShift action_20
action_148 (43) = happyShift action_21
action_148 (46) = happyShift action_22
action_148 (47) = happyShift action_23
action_148 (50) = happyShift action_24
action_148 (63) = happyShift action_25
action_148 (70) = happyShift action_26
action_148 (75) = happyShift action_27
action_148 (76) = happyShift action_28
action_148 (77) = happyShift action_29
action_148 (5) = happyGoto action_151
action_148 (6) = happyGoto action_3
action_148 (7) = happyGoto action_4
action_148 (8) = happyGoto action_5
action_148 (10) = happyGoto action_6
action_148 (11) = happyGoto action_7
action_148 (13) = happyGoto action_8
action_148 (14) = happyGoto action_9
action_148 (15) = happyGoto action_10
action_148 (16) = happyGoto action_11
action_148 (18) = happyGoto action_12
action_148 (19) = happyGoto action_13
action_148 (20) = happyGoto action_14
action_148 (21) = happyGoto action_15
action_148 (22) = happyGoto action_16
action_148 (23) = happyGoto action_17
action_148 (25) = happyGoto action_18
action_148 _ = happyFail

action_149 (53) = happyShift action_52
action_149 (54) = happyShift action_53
action_149 (55) = happyShift action_54
action_149 (56) = happyShift action_55
action_149 (57) = happyShift action_56
action_149 (58) = happyShift action_57
action_149 (59) = happyShift action_58
action_149 (60) = happyShift action_59
action_149 (61) = happyShift action_60
action_149 (62) = happyShift action_61
action_149 (63) = happyShift action_62
action_149 (64) = happyShift action_63
action_149 _ = happyReduce_29

action_150 (53) = happyShift action_52
action_150 (54) = happyShift action_53
action_150 (55) = happyShift action_54
action_150 (56) = happyShift action_55
action_150 (57) = happyShift action_56
action_150 (58) = happyShift action_57
action_150 (59) = happyShift action_58
action_150 (60) = happyShift action_59
action_150 (61) = happyShift action_60
action_150 (62) = happyShift action_61
action_150 (63) = happyShift action_62
action_150 (64) = happyShift action_63
action_150 _ = happyReduce_50

action_151 (53) = happyShift action_52
action_151 (54) = happyShift action_53
action_151 (55) = happyShift action_54
action_151 (56) = happyShift action_55
action_151 (57) = happyShift action_56
action_151 (58) = happyShift action_57
action_151 (59) = happyShift action_58
action_151 (60) = happyShift action_59
action_151 (61) = happyShift action_60
action_151 (62) = happyShift action_61
action_151 (63) = happyShift action_62
action_151 (64) = happyShift action_63
action_151 _ = happyReduce_55

action_152 (77) = happyShift action_156
action_152 _ = happyFail

action_153 (60) = happyShift action_155
action_153 _ = happyFail

action_154 (53) = happyShift action_52
action_154 (54) = happyShift action_53
action_154 (55) = happyShift action_54
action_154 (56) = happyShift action_55
action_154 (57) = happyShift action_56
action_154 (58) = happyShift action_57
action_154 (59) = happyShift action_58
action_154 (60) = happyShift action_59
action_154 (61) = happyShift action_60
action_154 (62) = happyShift action_61
action_154 (63) = happyShift action_62
action_154 (64) = happyShift action_63
action_154 _ = happyReduce_68

action_155 (38) = happyShift action_19
action_155 (42) = happyShift action_20
action_155 (43) = happyShift action_21
action_155 (46) = happyShift action_22
action_155 (47) = happyShift action_23
action_155 (50) = happyShift action_24
action_155 (63) = happyShift action_25
action_155 (70) = happyShift action_26
action_155 (75) = happyShift action_27
action_155 (76) = happyShift action_28
action_155 (77) = happyShift action_29
action_155 (5) = happyGoto action_157
action_155 (6) = happyGoto action_3
action_155 (7) = happyGoto action_4
action_155 (8) = happyGoto action_5
action_155 (10) = happyGoto action_6
action_155 (11) = happyGoto action_7
action_155 (13) = happyGoto action_8
action_155 (14) = happyGoto action_9
action_155 (15) = happyGoto action_10
action_155 (16) = happyGoto action_11
action_155 (18) = happyGoto action_12
action_155 (19) = happyGoto action_13
action_155 (20) = happyGoto action_14
action_155 (21) = happyGoto action_15
action_155 (22) = happyGoto action_16
action_155 (23) = happyGoto action_17
action_155 (25) = happyGoto action_18
action_155 _ = happyFail

action_156 _ = happyReduce_77

action_157 (53) = happyShift action_52
action_157 (54) = happyShift action_53
action_157 (55) = happyShift action_54
action_157 (56) = happyShift action_55
action_157 (57) = happyShift action_56
action_157 (58) = happyShift action_57
action_157 (59) = happyShift action_58
action_157 (60) = happyShift action_59
action_157 (61) = happyShift action_60
action_157 (62) = happyShift action_61
action_157 (63) = happyShift action_62
action_157 (64) = happyShift action_63
action_157 _ = happyReduce_69

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
happyReduction_10 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn16  happy_var_1)
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
happyReduction_14 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (AST.Break
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn6
		 (AST.Var happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  7 happyReduction_23
happyReduction_23 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn7
		 (AST.RecField (AST.Var happy_var_1) happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  7 happyReduction_24
happyReduction_24 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (AST.RecField happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 4 7 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.ArrSubscript (AST.Var happy_var_1) happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 4 7 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.ArrSubscript happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 8 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (AST.Seq (happy_var_2 : happy_var_4 : reverse happy_var_5)
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_0  9 happyReduction_28
happyReduction_28  =  HappyAbsSyn9
		 ([]
	)

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  10 happyReduction_30
happyReduction_30 (HappyTerminal (IntToken happy_var_2))
	_
	 =  HappyAbsSyn10
		 (AST.Neg happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 11 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.FunCall happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_0  12 happyReduction_32
happyReduction_32  =  HappyAbsSyn12
		 ([]
	)

happyReduce_33 = happySpecReduce_1  12 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  12 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  13 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Plus happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  13 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Minus happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  13 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Div happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  13 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Mult happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  14 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.Eq happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  14 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.Neq happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  14 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.Gt happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  14 happyReduction_42
happyReduction_42 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.Lt happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  14 happyReduction_43
happyReduction_43 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.Ge happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  14 happyReduction_44
happyReduction_44 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn14
		 (AST.Le happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  15 happyReduction_45
happyReduction_45 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn15
		 (AST.And happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  15 happyReduction_46
happyReduction_46 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn15
		 (AST.Or happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happyReduce 4 16 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_0  17 happyReduction_48
happyReduction_48  =  HappyAbsSyn17
		 ([]
	)

happyReduce_49 = happySpecReduce_3  17 happyReduction_49
happyReduction_49 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn17
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happyReduce 5 17 happyReduction_50
happyReduction_50 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 6 18 happyReduction_51
happyReduction_51 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_3  19 happyReduction_52
happyReduction_52 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn19
		 (AST.Assign happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happyReduce 4 20 happyReduction_53
happyReduction_53 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.Branch happy_var_2 happy_var_4 Nothing
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 4 21 happyReduction_54
happyReduction_54 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 8 22 happyReduction_55
happyReduction_55 ((HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (AST.For happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_56 = happyReduce 5 23 happyReduction_56
happyReduction_56 (_ `HappyStk`
	(HappyAbsSyn24  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn26  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 (AST.Let happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_57 = happySpecReduce_0  24 happyReduction_57
happyReduction_57  =  HappyAbsSyn24
		 ([]
	)

happyReduce_58 = happySpecReduce_1  24 happyReduction_58
happyReduction_58 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  24 happyReduction_59
happyReduction_59 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_3 : happy_var_1
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  25 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_0  26 happyReduction_61
happyReduction_61  =  HappyAbsSyn26
		 ([]
	)

happyReduce_62 = happySpecReduce_1  26 happyReduction_62
happyReduction_62 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn26
		 (reverse happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  27 happyReduction_63
happyReduction_63 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn27
		 ([happy_var_1]
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_2  27 happyReduction_64
happyReduction_64 (HappyAbsSyn28  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_2 : happy_var_1
	)
happyReduction_64 _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  28 happyReduction_65
happyReduction_65 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn28
		 (AST.TDec happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  28 happyReduction_66
happyReduction_66 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn28
		 (AST.VDec happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  28 happyReduction_67
happyReduction_67 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn28
		 (AST.FDec happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happyReduce 7 29 happyReduction_68
happyReduction_68 ((HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (AST.ProcDec happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_69 = happyReduce 9 29 happyReduction_69
happyReduction_69 ((HappyAbsSyn5  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_7)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn32  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn29
		 (AST.FunDec happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_70 = happyReduce 4 30 happyReduction_70
happyReduction_70 ((HappyAbsSyn31  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_71 = happySpecReduce_1  31 happyReduction_71
happyReduction_71 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn31
		 (AST.Type happy_var_1
	)
happyReduction_71 _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  31 happyReduction_72
happyReduction_72 _
	(HappyAbsSyn32  happy_var_2)
	_
	 =  HappyAbsSyn31
		 (AST.Record happy_var_2
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_3  31 happyReduction_73
happyReduction_73 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn31
		 (AST.Array happy_var_3
	)
happyReduction_73 _ _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_0  32 happyReduction_74
happyReduction_74  =  HappyAbsSyn32
		 ([]
	)

happyReduce_75 = happySpecReduce_1  32 happyReduction_75
happyReduction_75 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (reverse happy_var_1
	)
happyReduction_75 _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_3  33 happyReduction_76
happyReduction_76 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn33
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_76 _ _ _  = notHappyAtAll 

happyReduce_77 = happyReduce 5 33 happyReduction_77
happyReduction_77 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn33  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn33
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_78 = happyReduce 4 34 happyReduction_78
happyReduction_78 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_79 = happyReduce 6 34 happyReduction_79
happyReduction_79 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (AST.VarDecL happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyNewToken action sts stk
	= Lex.lexer(\tk -> 
	let cont i = action i i tk (HappyState action) sts stk in
	case tk of {
	Tok.EofToken -> action 78 78 tk (HappyState action) sts stk;
	TypeToken -> cont 35;
	VarToken -> cont 36;
	FunctionToken -> cont 37;
	BreakToken -> cont 38;
	OfToken -> cont 39;
	EndToken -> cont 40;
	InToken -> cont 41;
	NilToken -> cont 42;
	LetToken -> cont 43;
	DoToken -> cont 44;
	ToToken -> cont 45;
	ForToken -> cont 46;
	WhileToken -> cont 47;
	ElseToken -> cont 48;
	ThenToken -> cont 49;
	IfToken -> cont 50;
	ArrayToken -> cont 51;
	AssignToken -> cont 52;
	OrToken -> cont 53;
	AndToken -> cont 54;
	GeToken -> cont 55;
	GtToken -> cont 56;
	LeToken -> cont 57;
	LtToken -> cont 58;
	NeqToken -> cont 59;
	EqToken -> cont 60;
	DivideToken -> cont 61;
	TimesToken -> cont 62;
	MinusToken -> cont 63;
	PlusToken -> cont 64;
	DotToken -> cont 65;
	LbraceToken -> cont 66;
	RbraceToken -> cont 67;
	LbrackToken -> cont 68;
	RbrackToken -> cont 69;
	LparenToken -> cont 70;
	RparenToken -> cont 71;
	SemicolonToken -> cont 72;
	ColonToken -> cont 73;
	CommaToken -> cont 74;
	StringToken happy_dollar_dollar -> cont 75;
	IntToken happy_dollar_dollar -> cont 76;
	IdToken happy_dollar_dollar -> cont 77;
	_ -> happyError' tk
	})

happyError_ 78 tk = happyError' tk
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
