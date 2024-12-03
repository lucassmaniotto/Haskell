{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,264) ([16832,51241,1031,0,0,0,0,40956,31874,0,0,0,0,49152,10561,1992,37916,31874,0,0,7172,33428,49276,10561,1992,37916,31874,16832,51241,7,0,49152,10561,1992,0,0,32256,0,57344,7,0,126,0,40956,31938,0,4096,64512,34463,124,4096,0,49148,31874,16384,0,0,0,49152,10561,1992,37916,31874,16832,51241,7175,33428,49276,10561,1992,37916,31874,32256,0,0,4,0,64,0,1024,0,16384,0,0,4,49152,10561,1992,0,538,0,0,0,0,49152,10561,1992,0,0,0,512,0,6656,2,0,0,0,0,0,2048,64512,33503,49276,10561,1992,0,538,0,512,7168,33428,124,126,0,0,538,0,4096,57344,7,0,0,0,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Ty","true","false","num","'+'","'-'","'*'","and","or","not","'=='","if","then","else","'\\\\'","':'","'('","')'","Bool","Num","\"->\"","','","'['","']'","List","head","tail","null","isNull","var","%eof"]
        bit_start = st * 36
        bit_end = (st + 1) * 36
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..35]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (33) = happyShift action_13
action_0 (34) = happyShift action_14
action_0 (35) = happyShift action_15
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_26
action_3 (11) = happyShift action_27
action_3 (12) = happyShift action_28
action_3 (13) = happyShift action_29
action_3 (14) = happyShift action_30
action_3 (15) = happyShift action_6
action_3 (16) = happyShift action_31
action_3 (17) = happyShift action_7
action_3 (20) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (28) = happyShift action_10
action_3 (31) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (33) = happyShift action_13
action_3 (34) = happyShift action_14
action_3 (35) = happyShift action_15
action_3 (36) = happyAccept
action_3 (4) = happyGoto action_25
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (7) = happyShift action_2
action_6 (8) = happyShift action_4
action_6 (9) = happyShift action_5
action_6 (15) = happyShift action_6
action_6 (17) = happyShift action_7
action_6 (20) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (28) = happyShift action_10
action_6 (31) = happyShift action_11
action_6 (32) = happyShift action_12
action_6 (33) = happyShift action_13
action_6 (34) = happyShift action_14
action_6 (35) = happyShift action_15
action_6 (4) = happyGoto action_24
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (7) = happyShift action_2
action_7 (8) = happyShift action_4
action_7 (9) = happyShift action_5
action_7 (15) = happyShift action_6
action_7 (17) = happyShift action_7
action_7 (20) = happyShift action_8
action_7 (22) = happyShift action_9
action_7 (28) = happyShift action_10
action_7 (31) = happyShift action_11
action_7 (32) = happyShift action_12
action_7 (33) = happyShift action_13
action_7 (34) = happyShift action_14
action_7 (35) = happyShift action_15
action_7 (4) = happyGoto action_23
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (35) = happyShift action_22
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_2
action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (15) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (22) = happyShift action_9
action_9 (28) = happyShift action_10
action_9 (31) = happyShift action_11
action_9 (32) = happyShift action_12
action_9 (33) = happyShift action_13
action_9 (34) = happyShift action_14
action_9 (35) = happyShift action_15
action_9 (4) = happyGoto action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (15) = happyShift action_6
action_10 (17) = happyShift action_7
action_10 (20) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (28) = happyShift action_10
action_10 (31) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (33) = happyShift action_13
action_10 (34) = happyShift action_14
action_10 (35) = happyShift action_15
action_10 (4) = happyGoto action_19
action_10 (5) = happyGoto action_20
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_2
action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (15) = happyShift action_6
action_11 (17) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (22) = happyShift action_9
action_11 (28) = happyShift action_10
action_11 (31) = happyShift action_11
action_11 (32) = happyShift action_12
action_11 (33) = happyShift action_13
action_11 (34) = happyShift action_14
action_11 (35) = happyShift action_15
action_11 (4) = happyGoto action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (17) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (31) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (33) = happyShift action_13
action_12 (34) = happyShift action_14
action_12 (35) = happyShift action_15
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_19

action_14 (7) = happyShift action_2
action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (15) = happyShift action_6
action_14 (17) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (28) = happyShift action_10
action_14 (31) = happyShift action_11
action_14 (32) = happyShift action_12
action_14 (33) = happyShift action_13
action_14 (34) = happyShift action_14
action_14 (35) = happyShift action_15
action_14 (4) = happyGoto action_16
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_14

action_16 (7) = happyFail []
action_16 (8) = happyFail []
action_16 (9) = happyFail []
action_16 (10) = happyShift action_26
action_16 (11) = happyShift action_27
action_16 (12) = happyShift action_28
action_16 (13) = happyShift action_29
action_16 (14) = happyShift action_30
action_16 (15) = happyShift action_6
action_16 (16) = happyFail []
action_16 (17) = happyFail []
action_16 (20) = happyFail []
action_16 (22) = happyFail []
action_16 (28) = happyFail []
action_16 (31) = happyFail []
action_16 (32) = happyFail []
action_16 (33) = happyFail []
action_16 (34) = happyFail []
action_16 (35) = happyFail []
action_16 (4) = happyGoto action_25
action_16 _ = happyReduce_20

action_17 (7) = happyFail []
action_17 (8) = happyFail []
action_17 (9) = happyFail []
action_17 (10) = happyShift action_26
action_17 (11) = happyShift action_27
action_17 (12) = happyShift action_28
action_17 (13) = happyShift action_29
action_17 (14) = happyShift action_30
action_17 (15) = happyShift action_6
action_17 (16) = happyFail []
action_17 (17) = happyFail []
action_17 (20) = happyFail []
action_17 (22) = happyFail []
action_17 (28) = happyFail []
action_17 (31) = happyFail []
action_17 (32) = happyFail []
action_17 (33) = happyFail []
action_17 (34) = happyFail []
action_17 (35) = happyFail []
action_17 (4) = happyGoto action_25
action_17 _ = happyReduce_18

action_18 (7) = happyFail []
action_18 (8) = happyFail []
action_18 (9) = happyFail []
action_18 (10) = happyShift action_26
action_18 (11) = happyShift action_27
action_18 (12) = happyShift action_28
action_18 (13) = happyShift action_29
action_18 (14) = happyShift action_30
action_18 (15) = happyShift action_6
action_18 (16) = happyFail []
action_18 (17) = happyFail []
action_18 (20) = happyFail []
action_18 (22) = happyFail []
action_18 (28) = happyFail []
action_18 (31) = happyFail []
action_18 (32) = happyFail []
action_18 (33) = happyFail []
action_18 (34) = happyFail []
action_18 (35) = happyFail []
action_18 (4) = happyGoto action_25
action_18 _ = happyReduce_17

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (10) = happyShift action_26
action_19 (11) = happyShift action_27
action_19 (12) = happyShift action_28
action_19 (13) = happyShift action_29
action_19 (14) = happyShift action_30
action_19 (15) = happyShift action_6
action_19 (16) = happyShift action_31
action_19 (17) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (27) = happyShift action_42
action_19 (28) = happyShift action_10
action_19 (31) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (33) = happyShift action_13
action_19 (34) = happyShift action_14
action_19 (35) = happyShift action_15
action_19 (4) = happyGoto action_25
action_19 _ = happyReduce_21

action_20 (29) = happyShift action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_2
action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (10) = happyShift action_26
action_21 (11) = happyShift action_27
action_21 (12) = happyShift action_28
action_21 (13) = happyShift action_29
action_21 (14) = happyShift action_30
action_21 (15) = happyShift action_6
action_21 (16) = happyShift action_31
action_21 (17) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (23) = happyShift action_40
action_21 (28) = happyShift action_10
action_21 (31) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (33) = happyShift action_13
action_21 (34) = happyShift action_14
action_21 (35) = happyShift action_15
action_21 (4) = happyGoto action_25
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (21) = happyShift action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (10) = happyShift action_26
action_23 (11) = happyShift action_27
action_23 (12) = happyShift action_28
action_23 (13) = happyShift action_29
action_23 (14) = happyShift action_30
action_23 (15) = happyShift action_6
action_23 (16) = happyShift action_31
action_23 (17) = happyShift action_7
action_23 (18) = happyShift action_38
action_23 (20) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (31) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (33) = happyShift action_13
action_23 (34) = happyShift action_14
action_23 (35) = happyShift action_15
action_23 (4) = happyGoto action_25
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_6
action_24 (4) = happyGoto action_25
action_24 _ = happyReduce_9

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_26
action_25 (11) = happyShift action_27
action_25 (12) = happyShift action_28
action_25 (13) = happyShift action_29
action_25 (14) = happyShift action_30
action_25 (15) = happyShift action_6
action_25 (16) = happyShift action_31
action_25 (17) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (31) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (33) = happyShift action_13
action_25 (34) = happyShift action_14
action_25 (35) = happyShift action_15
action_25 (4) = happyGoto action_25
action_25 _ = happyReduce_13

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (15) = happyShift action_6
action_26 (17) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (28) = happyShift action_10
action_26 (31) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (33) = happyShift action_13
action_26 (34) = happyShift action_14
action_26 (35) = happyShift action_15
action_26 (4) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (31) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (33) = happyShift action_13
action_27 (34) = happyShift action_14
action_27 (35) = happyShift action_15
action_27 (4) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (20) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (28) = happyShift action_10
action_28 (31) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (33) = happyShift action_13
action_28 (34) = happyShift action_14
action_28 (35) = happyShift action_15
action_28 (4) = happyGoto action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_2
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (17) = happyShift action_7
action_29 (20) = happyShift action_8
action_29 (22) = happyShift action_9
action_29 (28) = happyShift action_10
action_29 (31) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (33) = happyShift action_13
action_29 (34) = happyShift action_14
action_29 (35) = happyShift action_15
action_29 (4) = happyGoto action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (15) = happyShift action_6
action_30 (17) = happyShift action_7
action_30 (20) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (28) = happyShift action_10
action_30 (31) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (33) = happyShift action_13
action_30 (34) = happyShift action_14
action_30 (35) = happyShift action_15
action_30 (4) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (20) = happyShift action_8
action_31 (22) = happyShift action_9
action_31 (28) = happyShift action_10
action_31 (31) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (33) = happyShift action_13
action_31 (34) = happyShift action_14
action_31 (35) = happyShift action_15
action_31 (4) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyFail []
action_32 (8) = happyFail []
action_32 (9) = happyFail []
action_32 (10) = happyShift action_26
action_32 (11) = happyShift action_27
action_32 (12) = happyShift action_28
action_32 (13) = happyShift action_29
action_32 (14) = happyShift action_30
action_32 (15) = happyShift action_6
action_32 (16) = happyFail []
action_32 (17) = happyFail []
action_32 (20) = happyFail []
action_32 (22) = happyFail []
action_32 (28) = happyFail []
action_32 (31) = happyFail []
action_32 (32) = happyFail []
action_32 (33) = happyFail []
action_32 (34) = happyFail []
action_32 (35) = happyFail []
action_32 (4) = happyGoto action_25
action_32 _ = happyReduce_10

action_33 (15) = happyShift action_6
action_33 (4) = happyGoto action_25
action_33 _ = happyReduce_8

action_34 (15) = happyShift action_6
action_34 (4) = happyGoto action_25
action_34 _ = happyReduce_7

action_35 (15) = happyShift action_6
action_35 (4) = happyGoto action_25
action_35 _ = happyReduce_6

action_36 (15) = happyShift action_6
action_36 (4) = happyGoto action_25
action_36 _ = happyReduce_5

action_37 (15) = happyShift action_6
action_37 (4) = happyGoto action_25
action_37 _ = happyReduce_4

action_38 (7) = happyShift action_2
action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (20) = happyShift action_8
action_38 (22) = happyShift action_9
action_38 (28) = happyShift action_10
action_38 (31) = happyShift action_11
action_38 (32) = happyShift action_12
action_38 (33) = happyShift action_13
action_38 (34) = happyShift action_14
action_38 (35) = happyShift action_15
action_38 (4) = happyGoto action_49
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (22) = happyShift action_45
action_39 (24) = happyShift action_46
action_39 (25) = happyShift action_47
action_39 (30) = happyShift action_48
action_39 (6) = happyGoto action_44
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_15

action_41 _ = happyReduce_16

action_42 (7) = happyShift action_2
action_42 (8) = happyShift action_4
action_42 (9) = happyShift action_5
action_42 (15) = happyShift action_6
action_42 (17) = happyShift action_7
action_42 (20) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (28) = happyShift action_10
action_42 (31) = happyShift action_11
action_42 (32) = happyShift action_12
action_42 (33) = happyShift action_13
action_42 (34) = happyShift action_14
action_42 (35) = happyShift action_15
action_42 (4) = happyGoto action_19
action_42 (5) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_22

action_44 (26) = happyShift action_53
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (22) = happyShift action_45
action_45 (24) = happyShift action_46
action_45 (25) = happyShift action_47
action_45 (30) = happyShift action_48
action_45 (6) = happyGoto action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_23

action_47 _ = happyReduce_24

action_48 (28) = happyShift action_51
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (7) = happyShift action_2
action_49 (8) = happyShift action_4
action_49 (9) = happyShift action_5
action_49 (10) = happyShift action_26
action_49 (11) = happyShift action_27
action_49 (12) = happyShift action_28
action_49 (13) = happyShift action_29
action_49 (14) = happyShift action_30
action_49 (15) = happyShift action_6
action_49 (16) = happyShift action_31
action_49 (17) = happyShift action_7
action_49 (19) = happyShift action_50
action_49 (20) = happyShift action_8
action_49 (22) = happyShift action_9
action_49 (28) = happyShift action_10
action_49 (31) = happyShift action_11
action_49 (32) = happyShift action_12
action_49 (33) = happyShift action_13
action_49 (34) = happyShift action_14
action_49 (35) = happyShift action_15
action_49 (4) = happyGoto action_25
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (7) = happyShift action_2
action_50 (8) = happyShift action_4
action_50 (9) = happyShift action_5
action_50 (15) = happyShift action_6
action_50 (17) = happyShift action_7
action_50 (20) = happyShift action_8
action_50 (22) = happyShift action_9
action_50 (28) = happyShift action_10
action_50 (31) = happyShift action_11
action_50 (32) = happyShift action_12
action_50 (33) = happyShift action_13
action_50 (34) = happyShift action_14
action_50 (35) = happyShift action_15
action_50 (4) = happyGoto action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (22) = happyShift action_45
action_51 (24) = happyShift action_46
action_51 (25) = happyShift action_47
action_51 (30) = happyShift action_48
action_51 (6) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (26) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_2
action_53 (8) = happyShift action_4
action_53 (9) = happyShift action_5
action_53 (15) = happyShift action_6
action_53 (17) = happyShift action_7
action_53 (20) = happyShift action_8
action_53 (22) = happyShift action_9
action_53 (28) = happyShift action_10
action_53 (31) = happyShift action_11
action_53 (32) = happyShift action_12
action_53 (33) = happyShift action_13
action_53 (34) = happyShift action_14
action_53 (35) = happyShift action_15
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyFail []
action_54 (8) = happyFail []
action_54 (9) = happyFail []
action_54 (10) = happyShift action_26
action_54 (11) = happyShift action_27
action_54 (12) = happyShift action_28
action_54 (13) = happyShift action_29
action_54 (14) = happyShift action_30
action_54 (15) = happyShift action_6
action_54 (16) = happyFail []
action_54 (17) = happyFail []
action_54 (20) = happyFail []
action_54 (22) = happyFail []
action_54 (28) = happyFail []
action_54 (31) = happyFail []
action_54 (32) = happyFail []
action_54 (33) = happyFail []
action_54 (34) = happyFail []
action_54 (35) = happyFail []
action_54 (4) = happyGoto action_25
action_54 _ = happyReduce_12

action_55 (22) = happyShift action_45
action_55 (24) = happyShift action_46
action_55 (25) = happyShift action_47
action_55 (30) = happyShift action_48
action_55 (6) = happyGoto action_59
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (29) = happyShift action_58
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyFail []
action_57 (8) = happyFail []
action_57 (9) = happyFail []
action_57 (10) = happyShift action_26
action_57 (11) = happyShift action_27
action_57 (12) = happyShift action_28
action_57 (13) = happyShift action_29
action_57 (14) = happyShift action_30
action_57 (15) = happyShift action_6
action_57 (16) = happyFail []
action_57 (17) = happyFail []
action_57 (20) = happyFail []
action_57 (22) = happyFail []
action_57 (28) = happyFail []
action_57 (31) = happyFail []
action_57 (32) = happyFail []
action_57 (33) = happyFail []
action_57 (34) = happyFail []
action_57 (35) = happyFail []
action_57 (4) = happyGoto action_25
action_57 _ = happyReduce_11

action_58 _ = happyReduce_26

action_59 (23) = happyShift action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  4 happyReduction_14
happyReduction_14 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn4
		 (Nil
	)

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (IsNil happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_24 = happySpecReduce_1  6 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_25 = happyReduce 5 6 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 4 6 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 36 36 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 7;
	TokenFalse -> cont 8;
	TokenNum happy_dollar_dollar -> cont 9;
	TokenAdd -> cont 10;
	TokenSub -> cont 11;
	TokenMul -> cont 12;
	TokenAnd -> cont 13;
	TokenOr -> cont 14;
	TokenNot -> cont 15;
	TokenEq -> cont 16;
	TokenIf -> cont 17;
	TokenThen -> cont 18;
	TokenElse -> cont 19;
	TokenLam -> cont 20;
	TokenColon -> cont 21;
	TokenOpenParen -> cont 22;
	TokenCloseParen -> cont 23;
	TokenBool -> cont 24;
	TokenNumType -> cont 25;
	TokenArrow -> cont 26;
	TokenComma -> cont 27;
	TokenOpenBracket -> cont 28;
	TokenCloseBracket -> cont 29;
	TokenList -> cont 30;
	TokenHead -> cont 31;
	TokenTail -> cont 32;
	TokenNil -> cont 33;
	TokenIsNil -> cont 34;
	TokenVar happy_dollar_dollar -> cont 35;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 36 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

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

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






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
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
