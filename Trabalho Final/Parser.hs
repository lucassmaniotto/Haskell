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
happyExpList = Happy_Data_Array.listArray (0,246) ([16832,51241,257,0,0,0,61440,2687,114,0,0,0,0,37916,7298,20592,29194,0,0,1793,8357,7175,33428,28700,2640,49266,10561,456,0,0,2016,0,8064,0,65472,52265,1,16384,64512,34463,28,1024,49152,11263,456,256,0,0,0,20592,29194,16832,51241,1793,8357,7175,33428,28700,2640,49266,10561,456,504,0,1024,0,4096,0,16384,0,0,1,0,4,28672,2640,114,40960,33,0,0,0,0,20592,29194,0,0,0,2048,0,6656,2,0,0,0,0,0,32,57340,7298,20592,29194,0,8608,0,2048,7168,33428,32796,31,0,40960,33,0,64,2016,0,0,0,0,64,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Ty","true","false","num","'+'","'-'","'*'","and","or","not","'=='","if","then","else","'\\\\'","':'","'('","')'","Bool","Num","\"->\"","','","'['","']'","List","head","tail","var","%eof"]
        bit_start = st * 34
        bit_end = (st + 1) * 34
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..33]
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
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_23
action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_25
action_3 (13) = happyShift action_26
action_3 (14) = happyShift action_27
action_3 (15) = happyShift action_6
action_3 (16) = happyShift action_28
action_3 (17) = happyShift action_7
action_3 (20) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (28) = happyShift action_10
action_3 (31) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (33) = happyShift action_13
action_3 (34) = happyAccept
action_3 (4) = happyGoto action_22
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
action_6 (4) = happyGoto action_21
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
action_7 (4) = happyGoto action_20
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (33) = happyShift action_19
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
action_9 (4) = happyGoto action_18
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
action_10 (4) = happyGoto action_16
action_10 (5) = happyGoto action_17
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
action_11 (4) = happyGoto action_15
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
action_12 (4) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_14

action_14 (7) = happyFail []
action_14 (8) = happyFail []
action_14 (9) = happyFail []
action_14 (10) = happyShift action_23
action_14 (11) = happyShift action_24
action_14 (12) = happyShift action_25
action_14 (13) = happyShift action_26
action_14 (14) = happyShift action_27
action_14 (15) = happyShift action_6
action_14 (16) = happyFail []
action_14 (17) = happyFail []
action_14 (20) = happyFail []
action_14 (22) = happyFail []
action_14 (28) = happyFail []
action_14 (31) = happyFail []
action_14 (32) = happyFail []
action_14 (33) = happyFail []
action_14 (4) = happyGoto action_22
action_14 _ = happyReduce_18

action_15 (7) = happyFail []
action_15 (8) = happyFail []
action_15 (9) = happyFail []
action_15 (10) = happyShift action_23
action_15 (11) = happyShift action_24
action_15 (12) = happyShift action_25
action_15 (13) = happyShift action_26
action_15 (14) = happyShift action_27
action_15 (15) = happyShift action_6
action_15 (16) = happyFail []
action_15 (17) = happyFail []
action_15 (20) = happyFail []
action_15 (22) = happyFail []
action_15 (28) = happyFail []
action_15 (31) = happyFail []
action_15 (32) = happyFail []
action_15 (33) = happyFail []
action_15 (4) = happyGoto action_22
action_15 _ = happyReduce_17

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_4
action_16 (9) = happyShift action_5
action_16 (10) = happyShift action_23
action_16 (11) = happyShift action_24
action_16 (12) = happyShift action_25
action_16 (13) = happyShift action_26
action_16 (14) = happyShift action_27
action_16 (15) = happyShift action_6
action_16 (16) = happyShift action_28
action_16 (17) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (27) = happyShift action_39
action_16 (28) = happyShift action_10
action_16 (31) = happyShift action_11
action_16 (32) = happyShift action_12
action_16 (33) = happyShift action_13
action_16 (4) = happyGoto action_22
action_16 _ = happyReduce_19

action_17 (29) = happyShift action_38
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (8) = happyShift action_4
action_18 (9) = happyShift action_5
action_18 (10) = happyShift action_23
action_18 (11) = happyShift action_24
action_18 (12) = happyShift action_25
action_18 (13) = happyShift action_26
action_18 (14) = happyShift action_27
action_18 (15) = happyShift action_6
action_18 (16) = happyShift action_28
action_18 (17) = happyShift action_7
action_18 (20) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (23) = happyShift action_37
action_18 (28) = happyShift action_10
action_18 (31) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (33) = happyShift action_13
action_18 (4) = happyGoto action_22
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (21) = happyShift action_36
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_23
action_20 (11) = happyShift action_24
action_20 (12) = happyShift action_25
action_20 (13) = happyShift action_26
action_20 (14) = happyShift action_27
action_20 (15) = happyShift action_6
action_20 (16) = happyShift action_28
action_20 (17) = happyShift action_7
action_20 (18) = happyShift action_35
action_20 (20) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (28) = happyShift action_10
action_20 (31) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (33) = happyShift action_13
action_20 (4) = happyGoto action_22
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (15) = happyShift action_6
action_21 (4) = happyGoto action_22
action_21 _ = happyReduce_9

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (10) = happyShift action_23
action_22 (11) = happyShift action_24
action_22 (12) = happyShift action_25
action_22 (13) = happyShift action_26
action_22 (14) = happyShift action_27
action_22 (15) = happyShift action_6
action_22 (16) = happyShift action_28
action_22 (17) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (31) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (33) = happyShift action_13
action_22 (4) = happyGoto action_22
action_22 _ = happyReduce_13

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (15) = happyShift action_6
action_23 (17) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (31) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (33) = happyShift action_13
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (15) = happyShift action_6
action_24 (17) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (31) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (33) = happyShift action_13
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (17) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (31) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (33) = happyShift action_13
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

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
action_26 (4) = happyGoto action_31
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
action_27 (4) = happyGoto action_30
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
action_28 (4) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyFail []
action_29 (8) = happyFail []
action_29 (9) = happyFail []
action_29 (10) = happyShift action_23
action_29 (11) = happyShift action_24
action_29 (12) = happyShift action_25
action_29 (13) = happyShift action_26
action_29 (14) = happyShift action_27
action_29 (15) = happyShift action_6
action_29 (16) = happyFail []
action_29 (17) = happyFail []
action_29 (20) = happyFail []
action_29 (22) = happyFail []
action_29 (28) = happyFail []
action_29 (31) = happyFail []
action_29 (32) = happyFail []
action_29 (33) = happyFail []
action_29 (4) = happyGoto action_22
action_29 _ = happyReduce_10

action_30 (15) = happyShift action_6
action_30 (4) = happyGoto action_22
action_30 _ = happyReduce_8

action_31 (15) = happyShift action_6
action_31 (4) = happyGoto action_22
action_31 _ = happyReduce_7

action_32 (15) = happyShift action_6
action_32 (4) = happyGoto action_22
action_32 _ = happyReduce_6

action_33 (15) = happyShift action_6
action_33 (4) = happyGoto action_22
action_33 _ = happyReduce_5

action_34 (15) = happyShift action_6
action_34 (4) = happyGoto action_22
action_34 _ = happyReduce_4

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (17) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (22) = happyShift action_9
action_35 (28) = happyShift action_10
action_35 (31) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (33) = happyShift action_13
action_35 (4) = happyGoto action_46
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (22) = happyShift action_42
action_36 (24) = happyShift action_43
action_36 (25) = happyShift action_44
action_36 (30) = happyShift action_45
action_36 (6) = happyGoto action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_15

action_38 _ = happyReduce_16

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (17) = happyShift action_7
action_39 (20) = happyShift action_8
action_39 (22) = happyShift action_9
action_39 (28) = happyShift action_10
action_39 (31) = happyShift action_11
action_39 (32) = happyShift action_12
action_39 (33) = happyShift action_13
action_39 (4) = happyGoto action_16
action_39 (5) = happyGoto action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_20

action_41 (26) = happyShift action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (22) = happyShift action_42
action_42 (24) = happyShift action_43
action_42 (25) = happyShift action_44
action_42 (30) = happyShift action_45
action_42 (6) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_21

action_44 _ = happyReduce_22

action_45 (28) = happyShift action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_4
action_46 (9) = happyShift action_5
action_46 (10) = happyShift action_23
action_46 (11) = happyShift action_24
action_46 (12) = happyShift action_25
action_46 (13) = happyShift action_26
action_46 (14) = happyShift action_27
action_46 (15) = happyShift action_6
action_46 (16) = happyShift action_28
action_46 (17) = happyShift action_7
action_46 (19) = happyShift action_47
action_46 (20) = happyShift action_8
action_46 (22) = happyShift action_9
action_46 (28) = happyShift action_10
action_46 (31) = happyShift action_11
action_46 (32) = happyShift action_12
action_46 (33) = happyShift action_13
action_46 (4) = happyGoto action_22
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_2
action_47 (8) = happyShift action_4
action_47 (9) = happyShift action_5
action_47 (15) = happyShift action_6
action_47 (17) = happyShift action_7
action_47 (20) = happyShift action_8
action_47 (22) = happyShift action_9
action_47 (28) = happyShift action_10
action_47 (31) = happyShift action_11
action_47 (32) = happyShift action_12
action_47 (33) = happyShift action_13
action_47 (4) = happyGoto action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (22) = happyShift action_42
action_48 (24) = happyShift action_43
action_48 (25) = happyShift action_44
action_48 (30) = happyShift action_45
action_48 (6) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (26) = happyShift action_52
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
action_50 (4) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (7) = happyFail []
action_51 (8) = happyFail []
action_51 (9) = happyFail []
action_51 (10) = happyShift action_23
action_51 (11) = happyShift action_24
action_51 (12) = happyShift action_25
action_51 (13) = happyShift action_26
action_51 (14) = happyShift action_27
action_51 (15) = happyShift action_6
action_51 (16) = happyFail []
action_51 (17) = happyFail []
action_51 (20) = happyFail []
action_51 (22) = happyFail []
action_51 (28) = happyFail []
action_51 (31) = happyFail []
action_51 (32) = happyFail []
action_51 (33) = happyFail []
action_51 (4) = happyGoto action_22
action_51 _ = happyReduce_12

action_52 (22) = happyShift action_42
action_52 (24) = happyShift action_43
action_52 (25) = happyShift action_44
action_52 (30) = happyShift action_45
action_52 (6) = happyGoto action_56
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (29) = happyShift action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyFail []
action_54 (8) = happyFail []
action_54 (9) = happyFail []
action_54 (10) = happyShift action_23
action_54 (11) = happyShift action_24
action_54 (12) = happyShift action_25
action_54 (13) = happyShift action_26
action_54 (14) = happyShift action_27
action_54 (15) = happyShift action_6
action_54 (16) = happyFail []
action_54 (17) = happyFail []
action_54 (20) = happyFail []
action_54 (22) = happyFail []
action_54 (28) = happyFail []
action_54 (31) = happyFail []
action_54 (32) = happyFail []
action_54 (33) = happyFail []
action_54 (4) = happyGoto action_22
action_54 _ = happyReduce_11

action_55 _ = happyReduce_24

action_56 (23) = happyShift action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_23

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

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_23 = happyReduce 5 6 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 4 6 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 34 34 notHappyAtAll (HappyState action) sts stk []

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
	TokenVar happy_dollar_dollar -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
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
