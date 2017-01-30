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
action_0 (60) = happyShift action_20
action_0 (67) = happyShift action_21
action_0 (72) = happyShift action_22
action_0 (73) = happyShift action_23
action_0 (74) = happyShift action_24
action_0 (4) = happyGoto action_25
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (10) = happyGoto action_6
action_0 (11) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 (14) = happyGoto action_9
action_0 (16) = happyGoto action_10
action_0 (17) = happyGoto action_11
action_0 (19) = happyGoto action_12
action_0 (20) = happyGoto action_13
action_0 (21) = happyGoto action_14
action_0 _ = happyFail

action_1 (35) = happyShift action_15
action_1 (39) = happyShift action_16
action_1 (40) = happyShift action_17
action_1 (43) = happyShift action_18
action_1 (44) = happyShift action_19
action_1 (60) = happyShift action_20
action_1 (67) = happyShift action_21
action_1 (72) = happyShift action_22
action_1 (73) = happyShift action_23
action_1 (74) = happyShift action_24
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (10) = happyGoto action_6
action_1 (11) = happyGoto action_7
action_1 (13) = happyGoto action_8
action_1 (14) = happyGoto action_9
action_1 (16) = happyGoto action_10
action_1 (17) = happyGoto action_11
action_1 (19) = happyGoto action_12
action_1 (20) = happyGoto action_13
action_1 (21) = happyGoto action_14
action_1 _ = happyFail

action_2 (58) = happyShift action_46
action_2 (59) = happyShift action_47
action_2 (60) = happyShift action_48
action_2 (61) = happyShift action_49
action_2 _ = happyReduce_1

action_3 (49) = happyShift action_45
action_3 _ = happyReduce_2

action_4 (62) = happyShift action_43
action_4 (65) = happyShift action_44
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

action_17 (32) = happyShift action_40
action_17 (33) = happyShift action_41
action_17 (34) = happyShift action_42
action_17 (23) = happyGoto action_34
action_17 (24) = happyGoto action_35
action_17 (25) = happyGoto action_36
action_17 (26) = happyGoto action_37
action_17 (27) = happyGoto action_38
action_17 (31) = happyGoto action_39
action_17 _ = happyReduce_49

action_18 (74) = happyShift action_33
action_18 _ = happyFail

action_19 (35) = happyShift action_15
action_19 (39) = happyShift action_16
action_19 (40) = happyShift action_17
action_19 (43) = happyShift action_18
action_19 (44) = happyShift action_19
action_19 (60) = happyShift action_20
action_19 (67) = happyShift action_21
action_19 (72) = happyShift action_22
action_19 (73) = happyShift action_23
action_19 (74) = happyShift action_24
action_19 (5) = happyGoto action_32
action_19 (6) = happyGoto action_3
action_19 (7) = happyGoto action_4
action_19 (8) = happyGoto action_5
action_19 (10) = happyGoto action_6
action_19 (11) = happyGoto action_7
action_19 (13) = happyGoto action_8
action_19 (14) = happyGoto action_9
action_19 (16) = happyGoto action_10
action_19 (17) = happyGoto action_11
action_19 (19) = happyGoto action_12
action_19 (20) = happyGoto action_13
action_19 (21) = happyGoto action_14
action_19 _ = happyFail

action_20 (73) = happyShift action_31
action_20 _ = happyFail

action_21 (35) = happyShift action_15
action_21 (39) = happyShift action_16
action_21 (40) = happyShift action_17
action_21 (43) = happyShift action_18
action_21 (44) = happyShift action_19
action_21 (60) = happyShift action_20
action_21 (67) = happyShift action_21
action_21 (72) = happyShift action_22
action_21 (73) = happyShift action_23
action_21 (74) = happyShift action_24
action_21 (5) = happyGoto action_30
action_21 (6) = happyGoto action_3
action_21 (7) = happyGoto action_4
action_21 (8) = happyGoto action_5
action_21 (10) = happyGoto action_6
action_21 (11) = happyGoto action_7
action_21 (13) = happyGoto action_8
action_21 (14) = happyGoto action_9
action_21 (16) = happyGoto action_10
action_21 (17) = happyGoto action_11
action_21 (19) = happyGoto action_12
action_21 (20) = happyGoto action_13
action_21 (21) = happyGoto action_14
action_21 _ = happyFail

action_22 _ = happyReduce_6

action_23 _ = happyReduce_5

action_24 (62) = happyShift action_26
action_24 (63) = happyShift action_27
action_24 (65) = happyShift action_28
action_24 (67) = happyShift action_29
action_24 _ = happyReduce_17

action_25 (76) = happyAccept
action_25 _ = happyFail

action_26 (74) = happyShift action_70
action_26 _ = happyFail

action_27 (74) = happyShift action_69
action_27 (15) = happyGoto action_68
action_27 _ = happyReduce_36

action_28 (35) = happyShift action_15
action_28 (39) = happyShift action_16
action_28 (40) = happyShift action_17
action_28 (43) = happyShift action_18
action_28 (44) = happyShift action_19
action_28 (60) = happyShift action_20
action_28 (67) = happyShift action_21
action_28 (72) = happyShift action_22
action_28 (73) = happyShift action_23
action_28 (74) = happyShift action_24
action_28 (5) = happyGoto action_67
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_4
action_28 (8) = happyGoto action_5
action_28 (10) = happyGoto action_6
action_28 (11) = happyGoto action_7
action_28 (13) = happyGoto action_8
action_28 (14) = happyGoto action_9
action_28 (16) = happyGoto action_10
action_28 (17) = happyGoto action_11
action_28 (19) = happyGoto action_12
action_28 (20) = happyGoto action_13
action_28 (21) = happyGoto action_14
action_28 _ = happyFail

action_29 (35) = happyShift action_15
action_29 (39) = happyShift action_16
action_29 (40) = happyShift action_17
action_29 (43) = happyShift action_18
action_29 (44) = happyShift action_19
action_29 (60) = happyShift action_20
action_29 (67) = happyShift action_21
action_29 (72) = happyShift action_22
action_29 (73) = happyShift action_23
action_29 (74) = happyShift action_24
action_29 (5) = happyGoto action_65
action_29 (6) = happyGoto action_3
action_29 (7) = happyGoto action_4
action_29 (8) = happyGoto action_5
action_29 (10) = happyGoto action_6
action_29 (11) = happyGoto action_7
action_29 (12) = happyGoto action_66
action_29 (13) = happyGoto action_8
action_29 (14) = happyGoto action_9
action_29 (16) = happyGoto action_10
action_29 (17) = happyGoto action_11
action_29 (19) = happyGoto action_12
action_29 (20) = happyGoto action_13
action_29 (21) = happyGoto action_14
action_29 _ = happyReduce_28

action_30 (58) = happyShift action_46
action_30 (59) = happyShift action_47
action_30 (60) = happyShift action_48
action_30 (61) = happyShift action_49
action_30 (69) = happyShift action_64
action_30 _ = happyFail

action_31 _ = happyReduce_26

action_32 (41) = happyShift action_63
action_32 (58) = happyShift action_46
action_32 (59) = happyShift action_47
action_32 (60) = happyShift action_48
action_32 (61) = happyShift action_49
action_32 _ = happyFail

action_33 (49) = happyShift action_62
action_33 _ = happyFail

action_34 (38) = happyShift action_61
action_34 _ = happyFail

action_35 (32) = happyShift action_40
action_35 (33) = happyShift action_41
action_35 (34) = happyShift action_42
action_35 (25) = happyGoto action_60
action_35 (26) = happyGoto action_37
action_35 (27) = happyGoto action_38
action_35 (31) = happyGoto action_39
action_35 _ = happyReduce_50

action_36 _ = happyReduce_51

action_37 _ = happyReduce_55

action_38 _ = happyReduce_53

action_39 _ = happyReduce_54

action_40 (74) = happyShift action_59
action_40 _ = happyFail

action_41 (74) = happyShift action_58
action_41 _ = happyFail

action_42 (74) = happyShift action_57
action_42 _ = happyFail

action_43 (74) = happyShift action_56
action_43 _ = happyFail

action_44 (35) = happyShift action_15
action_44 (39) = happyShift action_16
action_44 (40) = happyShift action_17
action_44 (43) = happyShift action_18
action_44 (44) = happyShift action_19
action_44 (60) = happyShift action_20
action_44 (67) = happyShift action_21
action_44 (72) = happyShift action_22
action_44 (73) = happyShift action_23
action_44 (74) = happyShift action_24
action_44 (5) = happyGoto action_55
action_44 (6) = happyGoto action_3
action_44 (7) = happyGoto action_4
action_44 (8) = happyGoto action_5
action_44 (10) = happyGoto action_6
action_44 (11) = happyGoto action_7
action_44 (13) = happyGoto action_8
action_44 (14) = happyGoto action_9
action_44 (16) = happyGoto action_10
action_44 (17) = happyGoto action_11
action_44 (19) = happyGoto action_12
action_44 (20) = happyGoto action_13
action_44 (21) = happyGoto action_14
action_44 _ = happyFail

action_45 (35) = happyShift action_15
action_45 (39) = happyShift action_16
action_45 (40) = happyShift action_17
action_45 (43) = happyShift action_18
action_45 (44) = happyShift action_19
action_45 (60) = happyShift action_20
action_45 (67) = happyShift action_21
action_45 (72) = happyShift action_22
action_45 (73) = happyShift action_23
action_45 (74) = happyShift action_24
action_45 (5) = happyGoto action_54
action_45 (6) = happyGoto action_3
action_45 (7) = happyGoto action_4
action_45 (8) = happyGoto action_5
action_45 (10) = happyGoto action_6
action_45 (11) = happyGoto action_7
action_45 (13) = happyGoto action_8
action_45 (14) = happyGoto action_9
action_45 (16) = happyGoto action_10
action_45 (17) = happyGoto action_11
action_45 (19) = happyGoto action_12
action_45 (20) = happyGoto action_13
action_45 (21) = happyGoto action_14
action_45 _ = happyFail

action_46 (35) = happyShift action_15
action_46 (39) = happyShift action_16
action_46 (40) = happyShift action_17
action_46 (43) = happyShift action_18
action_46 (44) = happyShift action_19
action_46 (60) = happyShift action_20
action_46 (67) = happyShift action_21
action_46 (72) = happyShift action_22
action_46 (73) = happyShift action_23
action_46 (74) = happyShift action_24
action_46 (5) = happyGoto action_53
action_46 (6) = happyGoto action_3
action_46 (7) = happyGoto action_4
action_46 (8) = happyGoto action_5
action_46 (10) = happyGoto action_6
action_46 (11) = happyGoto action_7
action_46 (13) = happyGoto action_8
action_46 (14) = happyGoto action_9
action_46 (16) = happyGoto action_10
action_46 (17) = happyGoto action_11
action_46 (19) = happyGoto action_12
action_46 (20) = happyGoto action_13
action_46 (21) = happyGoto action_14
action_46 _ = happyFail

action_47 (35) = happyShift action_15
action_47 (39) = happyShift action_16
action_47 (40) = happyShift action_17
action_47 (43) = happyShift action_18
action_47 (44) = happyShift action_19
action_47 (60) = happyShift action_20
action_47 (67) = happyShift action_21
action_47 (72) = happyShift action_22
action_47 (73) = happyShift action_23
action_47 (74) = happyShift action_24
action_47 (5) = happyGoto action_52
action_47 (6) = happyGoto action_3
action_47 (7) = happyGoto action_4
action_47 (8) = happyGoto action_5
action_47 (10) = happyGoto action_6
action_47 (11) = happyGoto action_7
action_47 (13) = happyGoto action_8
action_47 (14) = happyGoto action_9
action_47 (16) = happyGoto action_10
action_47 (17) = happyGoto action_11
action_47 (19) = happyGoto action_12
action_47 (20) = happyGoto action_13
action_47 (21) = happyGoto action_14
action_47 _ = happyFail

action_48 (35) = happyShift action_15
action_48 (39) = happyShift action_16
action_48 (40) = happyShift action_17
action_48 (43) = happyShift action_18
action_48 (44) = happyShift action_19
action_48 (60) = happyShift action_20
action_48 (67) = happyShift action_21
action_48 (72) = happyShift action_22
action_48 (73) = happyShift action_23
action_48 (74) = happyShift action_24
action_48 (5) = happyGoto action_51
action_48 (6) = happyGoto action_3
action_48 (7) = happyGoto action_4
action_48 (8) = happyGoto action_5
action_48 (10) = happyGoto action_6
action_48 (11) = happyGoto action_7
action_48 (13) = happyGoto action_8
action_48 (14) = happyGoto action_9
action_48 (16) = happyGoto action_10
action_48 (17) = happyGoto action_11
action_48 (19) = happyGoto action_12
action_48 (20) = happyGoto action_13
action_48 (21) = happyGoto action_14
action_48 _ = happyFail

action_49 (35) = happyShift action_15
action_49 (39) = happyShift action_16
action_49 (40) = happyShift action_17
action_49 (43) = happyShift action_18
action_49 (44) = happyShift action_19
action_49 (60) = happyShift action_20
action_49 (67) = happyShift action_21
action_49 (72) = happyShift action_22
action_49 (73) = happyShift action_23
action_49 (74) = happyShift action_24
action_49 (5) = happyGoto action_50
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_4
action_49 (8) = happyGoto action_5
action_49 (10) = happyGoto action_6
action_49 (11) = happyGoto action_7
action_49 (13) = happyGoto action_8
action_49 (14) = happyGoto action_9
action_49 (16) = happyGoto action_10
action_49 (17) = happyGoto action_11
action_49 (19) = happyGoto action_12
action_49 (20) = happyGoto action_13
action_49 (21) = happyGoto action_14
action_49 _ = happyFail

action_50 (58) = happyShift action_46
action_50 (59) = happyShift action_47
action_50 _ = happyReduce_31

action_51 (58) = happyShift action_46
action_51 (59) = happyShift action_47
action_51 _ = happyReduce_32

action_52 _ = happyReduce_34

action_53 _ = happyReduce_33

action_54 (58) = happyShift action_46
action_54 (59) = happyShift action_47
action_54 (60) = happyShift action_48
action_54 (61) = happyShift action_49
action_54 _ = happyReduce_40

action_55 (58) = happyShift action_46
action_55 (59) = happyShift action_47
action_55 (60) = happyShift action_48
action_55 (61) = happyShift action_49
action_55 (66) = happyShift action_86
action_55 _ = happyFail

action_56 _ = happyReduce_20

action_57 (67) = happyShift action_85
action_57 _ = happyFail

action_58 (49) = happyShift action_83
action_58 (70) = happyShift action_84
action_58 _ = happyFail

action_59 (57) = happyShift action_82
action_59 _ = happyFail

action_60 _ = happyReduce_52

action_61 (35) = happyShift action_15
action_61 (39) = happyShift action_16
action_61 (40) = happyShift action_17
action_61 (43) = happyShift action_18
action_61 (44) = happyShift action_19
action_61 (60) = happyShift action_20
action_61 (67) = happyShift action_21
action_61 (72) = happyShift action_22
action_61 (73) = happyShift action_23
action_61 (74) = happyShift action_24
action_61 (5) = happyGoto action_80
action_61 (6) = happyGoto action_3
action_61 (7) = happyGoto action_4
action_61 (8) = happyGoto action_5
action_61 (10) = happyGoto action_6
action_61 (11) = happyGoto action_7
action_61 (13) = happyGoto action_8
action_61 (14) = happyGoto action_9
action_61 (16) = happyGoto action_10
action_61 (17) = happyGoto action_11
action_61 (19) = happyGoto action_12
action_61 (20) = happyGoto action_13
action_61 (21) = happyGoto action_14
action_61 (22) = happyGoto action_81
action_61 _ = happyReduce_46

action_62 (35) = happyShift action_15
action_62 (39) = happyShift action_16
action_62 (40) = happyShift action_17
action_62 (43) = happyShift action_18
action_62 (44) = happyShift action_19
action_62 (60) = happyShift action_20
action_62 (67) = happyShift action_21
action_62 (72) = happyShift action_22
action_62 (73) = happyShift action_23
action_62 (74) = happyShift action_24
action_62 (5) = happyGoto action_79
action_62 (6) = happyGoto action_3
action_62 (7) = happyGoto action_4
action_62 (8) = happyGoto action_5
action_62 (10) = happyGoto action_6
action_62 (11) = happyGoto action_7
action_62 (13) = happyGoto action_8
action_62 (14) = happyGoto action_9
action_62 (16) = happyGoto action_10
action_62 (17) = happyGoto action_11
action_62 (19) = happyGoto action_12
action_62 (20) = happyGoto action_13
action_62 (21) = happyGoto action_14
action_62 _ = happyFail

action_63 (35) = happyShift action_15
action_63 (39) = happyShift action_16
action_63 (40) = happyShift action_17
action_63 (43) = happyShift action_18
action_63 (44) = happyShift action_19
action_63 (60) = happyShift action_20
action_63 (67) = happyShift action_21
action_63 (72) = happyShift action_22
action_63 (73) = happyShift action_23
action_63 (74) = happyShift action_24
action_63 (5) = happyGoto action_78
action_63 (6) = happyGoto action_3
action_63 (7) = happyGoto action_4
action_63 (8) = happyGoto action_5
action_63 (10) = happyGoto action_6
action_63 (11) = happyGoto action_7
action_63 (13) = happyGoto action_8
action_63 (14) = happyGoto action_9
action_63 (16) = happyGoto action_10
action_63 (17) = happyGoto action_11
action_63 (19) = happyGoto action_12
action_63 (20) = happyGoto action_13
action_63 (21) = happyGoto action_14
action_63 _ = happyFail

action_64 (35) = happyShift action_15
action_64 (39) = happyShift action_16
action_64 (40) = happyShift action_17
action_64 (43) = happyShift action_18
action_64 (44) = happyShift action_19
action_64 (60) = happyShift action_20
action_64 (67) = happyShift action_21
action_64 (72) = happyShift action_22
action_64 (73) = happyShift action_23
action_64 (74) = happyShift action_24
action_64 (5) = happyGoto action_77
action_64 (6) = happyGoto action_3
action_64 (7) = happyGoto action_4
action_64 (8) = happyGoto action_5
action_64 (10) = happyGoto action_6
action_64 (11) = happyGoto action_7
action_64 (13) = happyGoto action_8
action_64 (14) = happyGoto action_9
action_64 (16) = happyGoto action_10
action_64 (17) = happyGoto action_11
action_64 (19) = happyGoto action_12
action_64 (20) = happyGoto action_13
action_64 (21) = happyGoto action_14
action_64 _ = happyFail

action_65 (58) = happyShift action_46
action_65 (59) = happyShift action_47
action_65 (60) = happyShift action_48
action_65 (61) = happyShift action_49
action_65 _ = happyReduce_29

action_66 (68) = happyShift action_75
action_66 (71) = happyShift action_76
action_66 _ = happyFail

action_67 (58) = happyShift action_46
action_67 (59) = happyShift action_47
action_67 (60) = happyShift action_48
action_67 (61) = happyShift action_49
action_67 (66) = happyShift action_74
action_67 _ = happyFail

action_68 (64) = happyShift action_72
action_68 (71) = happyShift action_73
action_68 _ = happyFail

action_69 (57) = happyShift action_71
action_69 _ = happyFail

action_70 _ = happyReduce_19

action_71 (35) = happyShift action_15
action_71 (39) = happyShift action_16
action_71 (40) = happyShift action_17
action_71 (43) = happyShift action_18
action_71 (44) = happyShift action_19
action_71 (60) = happyShift action_20
action_71 (67) = happyShift action_21
action_71 (72) = happyShift action_22
action_71 (73) = happyShift action_23
action_71 (74) = happyShift action_24
action_71 (5) = happyGoto action_103
action_71 (6) = happyGoto action_3
action_71 (7) = happyGoto action_4
action_71 (8) = happyGoto action_5
action_71 (10) = happyGoto action_6
action_71 (11) = happyGoto action_7
action_71 (13) = happyGoto action_8
action_71 (14) = happyGoto action_9
action_71 (16) = happyGoto action_10
action_71 (17) = happyGoto action_11
action_71 (19) = happyGoto action_12
action_71 (20) = happyGoto action_13
action_71 (21) = happyGoto action_14
action_71 _ = happyFail

action_72 _ = happyReduce_35

action_73 (74) = happyShift action_102
action_73 _ = happyFail

action_74 (36) = happyShift action_101
action_74 _ = happyReduce_21

action_75 _ = happyReduce_27

action_76 (35) = happyShift action_15
action_76 (39) = happyShift action_16
action_76 (40) = happyShift action_17
action_76 (43) = happyShift action_18
action_76 (44) = happyShift action_19
action_76 (60) = happyShift action_20
action_76 (67) = happyShift action_21
action_76 (72) = happyShift action_22
action_76 (73) = happyShift action_23
action_76 (74) = happyShift action_24
action_76 (5) = happyGoto action_100
action_76 (6) = happyGoto action_3
action_76 (7) = happyGoto action_4
action_76 (8) = happyGoto action_5
action_76 (10) = happyGoto action_6
action_76 (11) = happyGoto action_7
action_76 (13) = happyGoto action_8
action_76 (14) = happyGoto action_9
action_76 (16) = happyGoto action_10
action_76 (17) = happyGoto action_11
action_76 (19) = happyGoto action_12
action_76 (20) = happyGoto action_13
action_76 (21) = happyGoto action_14
action_76 _ = happyFail

action_77 (58) = happyShift action_46
action_77 (59) = happyShift action_47
action_77 (60) = happyShift action_48
action_77 (61) = happyShift action_49
action_77 (9) = happyGoto action_99
action_77 _ = happyReduce_24

action_78 (58) = happyShift action_46
action_78 (59) = happyShift action_47
action_78 (60) = happyShift action_48
action_78 (61) = happyShift action_49
action_78 _ = happyReduce_43

action_79 (42) = happyShift action_98
action_79 (58) = happyShift action_46
action_79 (59) = happyShift action_47
action_79 (60) = happyShift action_48
action_79 (61) = happyShift action_49
action_79 _ = happyFail

action_80 (58) = happyShift action_46
action_80 (59) = happyShift action_47
action_80 (60) = happyShift action_48
action_80 (61) = happyShift action_49
action_80 _ = happyReduce_47

action_81 (37) = happyShift action_96
action_81 (69) = happyShift action_97
action_81 _ = happyFail

action_82 (48) = happyShift action_93
action_82 (63) = happyShift action_94
action_82 (74) = happyShift action_95
action_82 (28) = happyGoto action_92
action_82 _ = happyFail

action_83 (35) = happyShift action_15
action_83 (39) = happyShift action_16
action_83 (40) = happyShift action_17
action_83 (43) = happyShift action_18
action_83 (44) = happyShift action_19
action_83 (60) = happyShift action_20
action_83 (67) = happyShift action_21
action_83 (72) = happyShift action_22
action_83 (73) = happyShift action_23
action_83 (74) = happyShift action_24
action_83 (5) = happyGoto action_91
action_83 (6) = happyGoto action_3
action_83 (7) = happyGoto action_4
action_83 (8) = happyGoto action_5
action_83 (10) = happyGoto action_6
action_83 (11) = happyGoto action_7
action_83 (13) = happyGoto action_8
action_83 (14) = happyGoto action_9
action_83 (16) = happyGoto action_10
action_83 (17) = happyGoto action_11
action_83 (19) = happyGoto action_12
action_83 (20) = happyGoto action_13
action_83 (21) = happyGoto action_14
action_83 _ = happyFail

action_84 (74) = happyShift action_90
action_84 _ = happyFail

action_85 (74) = happyShift action_89
action_85 (29) = happyGoto action_87
action_85 (30) = happyGoto action_88
action_85 _ = happyReduce_62

action_86 _ = happyReduce_22

action_87 (68) = happyShift action_115
action_87 _ = happyFail

action_88 (71) = happyShift action_114
action_88 _ = happyReduce_63

action_89 (70) = happyShift action_113
action_89 _ = happyFail

action_90 (49) = happyShift action_112
action_90 _ = happyFail

action_91 (58) = happyShift action_46
action_91 (59) = happyShift action_47
action_91 (60) = happyShift action_48
action_91 (61) = happyShift action_49
action_91 _ = happyReduce_66

action_92 _ = happyReduce_58

action_93 (36) = happyShift action_111
action_93 _ = happyFail

action_94 (74) = happyShift action_89
action_94 (29) = happyGoto action_110
action_94 (30) = happyGoto action_88
action_94 _ = happyReduce_62

action_95 _ = happyReduce_59

action_96 _ = happyReduce_45

action_97 (35) = happyShift action_15
action_97 (39) = happyShift action_16
action_97 (40) = happyShift action_17
action_97 (43) = happyShift action_18
action_97 (44) = happyShift action_19
action_97 (60) = happyShift action_20
action_97 (67) = happyShift action_21
action_97 (72) = happyShift action_22
action_97 (73) = happyShift action_23
action_97 (74) = happyShift action_24
action_97 (5) = happyGoto action_109
action_97 (6) = happyGoto action_3
action_97 (7) = happyGoto action_4
action_97 (8) = happyGoto action_5
action_97 (10) = happyGoto action_6
action_97 (11) = happyGoto action_7
action_97 (13) = happyGoto action_8
action_97 (14) = happyGoto action_9
action_97 (16) = happyGoto action_10
action_97 (17) = happyGoto action_11
action_97 (19) = happyGoto action_12
action_97 (20) = happyGoto action_13
action_97 (21) = happyGoto action_14
action_97 _ = happyFail

action_98 (35) = happyShift action_15
action_98 (39) = happyShift action_16
action_98 (40) = happyShift action_17
action_98 (43) = happyShift action_18
action_98 (44) = happyShift action_19
action_98 (60) = happyShift action_20
action_98 (67) = happyShift action_21
action_98 (72) = happyShift action_22
action_98 (73) = happyShift action_23
action_98 (74) = happyShift action_24
action_98 (5) = happyGoto action_108
action_98 (6) = happyGoto action_3
action_98 (7) = happyGoto action_4
action_98 (8) = happyGoto action_5
action_98 (10) = happyGoto action_6
action_98 (11) = happyGoto action_7
action_98 (13) = happyGoto action_8
action_98 (14) = happyGoto action_9
action_98 (16) = happyGoto action_10
action_98 (17) = happyGoto action_11
action_98 (19) = happyGoto action_12
action_98 (20) = happyGoto action_13
action_98 (21) = happyGoto action_14
action_98 _ = happyFail

action_99 (68) = happyShift action_106
action_99 (69) = happyShift action_107
action_99 _ = happyFail

action_100 (58) = happyShift action_46
action_100 (59) = happyShift action_47
action_100 (60) = happyShift action_48
action_100 (61) = happyShift action_49
action_100 _ = happyReduce_30

action_101 (35) = happyShift action_15
action_101 (39) = happyShift action_16
action_101 (40) = happyShift action_17
action_101 (43) = happyShift action_18
action_101 (44) = happyShift action_19
action_101 (60) = happyShift action_20
action_101 (67) = happyShift action_21
action_101 (72) = happyShift action_22
action_101 (73) = happyShift action_23
action_101 (74) = happyShift action_24
action_101 (5) = happyGoto action_105
action_101 (6) = happyGoto action_3
action_101 (7) = happyGoto action_4
action_101 (8) = happyGoto action_5
action_101 (10) = happyGoto action_6
action_101 (11) = happyGoto action_7
action_101 (13) = happyGoto action_8
action_101 (14) = happyGoto action_9
action_101 (16) = happyGoto action_10
action_101 (17) = happyGoto action_11
action_101 (19) = happyGoto action_12
action_101 (20) = happyGoto action_13
action_101 (21) = happyGoto action_14
action_101 _ = happyFail

action_102 (57) = happyShift action_104
action_102 _ = happyFail

action_103 (58) = happyShift action_46
action_103 (59) = happyShift action_47
action_103 (60) = happyShift action_48
action_103 (61) = happyShift action_49
action_103 _ = happyReduce_37

action_104 (35) = happyShift action_15
action_104 (39) = happyShift action_16
action_104 (40) = happyShift action_17
action_104 (43) = happyShift action_18
action_104 (44) = happyShift action_19
action_104 (60) = happyShift action_20
action_104 (67) = happyShift action_21
action_104 (72) = happyShift action_22
action_104 (73) = happyShift action_23
action_104 (74) = happyShift action_24
action_104 (5) = happyGoto action_125
action_104 (6) = happyGoto action_3
action_104 (7) = happyGoto action_4
action_104 (8) = happyGoto action_5
action_104 (10) = happyGoto action_6
action_104 (11) = happyGoto action_7
action_104 (13) = happyGoto action_8
action_104 (14) = happyGoto action_9
action_104 (16) = happyGoto action_10
action_104 (17) = happyGoto action_11
action_104 (19) = happyGoto action_12
action_104 (20) = happyGoto action_13
action_104 (21) = happyGoto action_14
action_104 _ = happyFail

action_105 (58) = happyShift action_46
action_105 (59) = happyShift action_47
action_105 (60) = happyShift action_48
action_105 (61) = happyShift action_49
action_105 _ = happyReduce_39

action_106 _ = happyReduce_23

action_107 (35) = happyShift action_15
action_107 (39) = happyShift action_16
action_107 (40) = happyShift action_17
action_107 (43) = happyShift action_18
action_107 (44) = happyShift action_19
action_107 (60) = happyShift action_20
action_107 (67) = happyShift action_21
action_107 (72) = happyShift action_22
action_107 (73) = happyShift action_23
action_107 (74) = happyShift action_24
action_107 (5) = happyGoto action_124
action_107 (6) = happyGoto action_3
action_107 (7) = happyGoto action_4
action_107 (8) = happyGoto action_5
action_107 (10) = happyGoto action_6
action_107 (11) = happyGoto action_7
action_107 (13) = happyGoto action_8
action_107 (14) = happyGoto action_9
action_107 (16) = happyGoto action_10
action_107 (17) = happyGoto action_11
action_107 (19) = happyGoto action_12
action_107 (20) = happyGoto action_13
action_107 (21) = happyGoto action_14
action_107 _ = happyFail

action_108 (41) = happyShift action_123
action_108 (58) = happyShift action_46
action_108 (59) = happyShift action_47
action_108 (60) = happyShift action_48
action_108 (61) = happyShift action_49
action_108 _ = happyFail

action_109 (58) = happyShift action_46
action_109 (59) = happyShift action_47
action_109 (60) = happyShift action_48
action_109 (61) = happyShift action_49
action_109 _ = happyReduce_48

action_110 (64) = happyShift action_122
action_110 _ = happyFail

action_111 (74) = happyShift action_121
action_111 _ = happyFail

action_112 (35) = happyShift action_15
action_112 (39) = happyShift action_16
action_112 (40) = happyShift action_17
action_112 (43) = happyShift action_18
action_112 (44) = happyShift action_19
action_112 (60) = happyShift action_20
action_112 (67) = happyShift action_21
action_112 (72) = happyShift action_22
action_112 (73) = happyShift action_23
action_112 (74) = happyShift action_24
action_112 (5) = happyGoto action_120
action_112 (6) = happyGoto action_3
action_112 (7) = happyGoto action_4
action_112 (8) = happyGoto action_5
action_112 (10) = happyGoto action_6
action_112 (11) = happyGoto action_7
action_112 (13) = happyGoto action_8
action_112 (14) = happyGoto action_9
action_112 (16) = happyGoto action_10
action_112 (17) = happyGoto action_11
action_112 (19) = happyGoto action_12
action_112 (20) = happyGoto action_13
action_112 (21) = happyGoto action_14
action_112 _ = happyFail

action_113 (74) = happyShift action_119
action_113 _ = happyFail

action_114 (74) = happyShift action_118
action_114 _ = happyFail

action_115 (57) = happyShift action_116
action_115 (70) = happyShift action_117
action_115 _ = happyFail

action_116 (35) = happyShift action_15
action_116 (39) = happyShift action_16
action_116 (40) = happyShift action_17
action_116 (43) = happyShift action_18
action_116 (44) = happyShift action_19
action_116 (60) = happyShift action_20
action_116 (67) = happyShift action_21
action_116 (72) = happyShift action_22
action_116 (73) = happyShift action_23
action_116 (74) = happyShift action_24
action_116 (5) = happyGoto action_129
action_116 (6) = happyGoto action_3
action_116 (7) = happyGoto action_4
action_116 (8) = happyGoto action_5
action_116 (10) = happyGoto action_6
action_116 (11) = happyGoto action_7
action_116 (13) = happyGoto action_8
action_116 (14) = happyGoto action_9
action_116 (16) = happyGoto action_10
action_116 (17) = happyGoto action_11
action_116 (19) = happyGoto action_12
action_116 (20) = happyGoto action_13
action_116 (21) = happyGoto action_14
action_116 _ = happyFail

action_117 (74) = happyShift action_128
action_117 _ = happyFail

action_118 (70) = happyShift action_127
action_118 _ = happyFail

action_119 _ = happyReduce_64

action_120 (58) = happyShift action_46
action_120 (59) = happyShift action_47
action_120 (60) = happyShift action_48
action_120 (61) = happyShift action_49
action_120 _ = happyReduce_67

action_121 _ = happyReduce_61

action_122 _ = happyReduce_60

action_123 (35) = happyShift action_15
action_123 (39) = happyShift action_16
action_123 (40) = happyShift action_17
action_123 (43) = happyShift action_18
action_123 (44) = happyShift action_19
action_123 (60) = happyShift action_20
action_123 (67) = happyShift action_21
action_123 (72) = happyShift action_22
action_123 (73) = happyShift action_23
action_123 (74) = happyShift action_24
action_123 (5) = happyGoto action_126
action_123 (6) = happyGoto action_3
action_123 (7) = happyGoto action_4
action_123 (8) = happyGoto action_5
action_123 (10) = happyGoto action_6
action_123 (11) = happyGoto action_7
action_123 (13) = happyGoto action_8
action_123 (14) = happyGoto action_9
action_123 (16) = happyGoto action_10
action_123 (17) = happyGoto action_11
action_123 (19) = happyGoto action_12
action_123 (20) = happyGoto action_13
action_123 (21) = happyGoto action_14
action_123 _ = happyFail

action_124 (58) = happyShift action_46
action_124 (59) = happyShift action_47
action_124 (60) = happyShift action_48
action_124 (61) = happyShift action_49
action_124 _ = happyReduce_25

action_125 (58) = happyShift action_46
action_125 (59) = happyShift action_47
action_125 (60) = happyShift action_48
action_125 (61) = happyShift action_49
action_125 _ = happyReduce_38

action_126 (58) = happyShift action_46
action_126 (59) = happyShift action_47
action_126 (60) = happyShift action_48
action_126 (61) = happyShift action_49
action_126 _ = happyReduce_44

action_127 (74) = happyShift action_131
action_127 _ = happyFail

action_128 (57) = happyShift action_130
action_128 _ = happyFail

action_129 (58) = happyShift action_46
action_129 (59) = happyShift action_47
action_129 (60) = happyShift action_48
action_129 (61) = happyShift action_49
action_129 _ = happyReduce_56

action_130 (35) = happyShift action_15
action_130 (39) = happyShift action_16
action_130 (40) = happyShift action_17
action_130 (43) = happyShift action_18
action_130 (44) = happyShift action_19
action_130 (60) = happyShift action_20
action_130 (67) = happyShift action_21
action_130 (72) = happyShift action_22
action_130 (73) = happyShift action_23
action_130 (74) = happyShift action_24
action_130 (5) = happyGoto action_132
action_130 (6) = happyGoto action_3
action_130 (7) = happyGoto action_4
action_130 (8) = happyGoto action_5
action_130 (10) = happyGoto action_6
action_130 (11) = happyGoto action_7
action_130 (13) = happyGoto action_8
action_130 (14) = happyGoto action_9
action_130 (16) = happyGoto action_10
action_130 (17) = happyGoto action_11
action_130 (19) = happyGoto action_12
action_130 (20) = happyGoto action_13
action_130 (21) = happyGoto action_14
action_130 _ = happyFail

action_131 _ = happyReduce_65

action_132 (58) = happyShift action_46
action_132 (59) = happyShift action_47
action_132 (60) = happyShift action_48
action_132 (61) = happyShift action_49
action_132 _ = happyReduce_57

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
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Plus happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  13 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Minus happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  13 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Div happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  13 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn13
		 (AST.Mult happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 14 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.RecExp happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_0  15 happyReduction_36
happyReduction_36  =  HappyAbsSyn15
		 ([]
	)

happyReduce_37 = happySpecReduce_3  15 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn15
		 ([AST.Field happy_var_1 happy_var_3]
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 15 happyReduction_38
happyReduction_38 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.Field happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 16 happyReduction_39
happyReduction_39 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.ArrExp happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_3  17 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn17
		 (AST.Assign happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happyReduce 6 18 happyReduction_41
happyReduction_41 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.Branch happy_var_2 happy_var_4 (Just happy_var_6)
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 4 18 happyReduction_42
happyReduction_42 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.Branch happy_var_2 happy_var_4 Nothing
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 4 19 happyReduction_43
happyReduction_43 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_44 = happyReduce 8 20 happyReduction_44
happyReduction_44 ((HappyAbsSyn5  happy_var_8) `HappyStk`
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

happyReduce_45 = happyReduce 5 21 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn22  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.Let happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_0  22 happyReduction_46
happyReduction_46  =  HappyAbsSyn22
		 ([]
	)

happyReduce_47 = happySpecReduce_1  22 happyReduction_47
happyReduction_47 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn22
		 ([happy_var_1]
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  22 happyReduction_48
happyReduction_48 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_3 : happy_var_1
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_0  23 happyReduction_49
happyReduction_49  =  HappyAbsSyn23
		 ([]
	)

happyReduce_50 = happySpecReduce_1  23 happyReduction_50
happyReduction_50 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (reverse happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  24 happyReduction_51
happyReduction_51 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn24
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  24 happyReduction_52
happyReduction_52 (HappyAbsSyn25  happy_var_2)
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_2 : happy_var_1
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  25 happyReduction_53
happyReduction_53 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn25
		 (AST.TDec happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  25 happyReduction_54
happyReduction_54 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn25
		 (AST.VDec happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  25 happyReduction_55
happyReduction_55 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn25
		 (AST.FDec happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happyReduce 7 26 happyReduction_56
happyReduction_56 ((HappyAbsSyn5  happy_var_7) `HappyStk`
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

happyReduce_57 = happyReduce 9 26 happyReduction_57
happyReduction_57 ((HappyAbsSyn5  happy_var_9) `HappyStk`
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

happyReduce_58 = happyReduce 4 27 happyReduction_58
happyReduction_58 ((HappyAbsSyn28  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 (AST.TypeDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_59 = happySpecReduce_1  28 happyReduction_59
happyReduction_59 (HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn28
		 (AST.Type happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  28 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn29  happy_var_2)
	_
	 =  HappyAbsSyn28
		 (AST.Record happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  28 happyReduction_61
happyReduction_61 (HappyTerminal (IdToken happy_var_3))
	_
	_
	 =  HappyAbsSyn28
		 (AST.Array happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_0  29 happyReduction_62
happyReduction_62  =  HappyAbsSyn29
		 ([]
	)

happyReduce_63 = happySpecReduce_1  29 happyReduction_63
happyReduction_63 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (reverse happy_var_1
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  30 happyReduction_64
happyReduction_64 (HappyTerminal (IdToken happy_var_3))
	_
	(HappyTerminal (IdToken happy_var_1))
	 =  HappyAbsSyn30
		 ([AST.TyField happy_var_1 happy_var_3]
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happyReduce 5 30 happyReduction_65
happyReduction_65 ((HappyTerminal (IdToken happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn30
		 (AST.TyField happy_var_3 happy_var_5 : happy_var_1
	) `HappyStk` happyRest

happyReduce_66 = happyReduce 4 31 happyReduction_66
happyReduction_66 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (IdToken happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 (AST.VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_67 = happyReduce 6 31 happyReduction_67
happyReduction_67 ((HappyAbsSyn5  happy_var_6) `HappyStk`
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
