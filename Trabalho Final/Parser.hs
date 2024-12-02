{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,166) ([41184,532,1,0,0,65472,1065,0,0,0,33664,2130,37916,66,0,1794,4261,0,49152,27135,4,128,65520,266,128,0,0,41184,532,42247,14352,34088,16832,1065,18958,28705,2640,64513,0,1024,0,32,0,1,2048,0,64,3584,8522,0,96,0,0,8192,0,0,0,63488,34239,16832,1065,18958,32813,31,0,0,2016,0,49152,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Ty","true","false","num","'+'","'-'","'*'","and","or","not","\"==\"","if","then","else","'\\\\'","':'","'('","')'","\"Bool\"","\"Num\"","\"->\"","var","%eof"]
        bit_start = st * 27
        bit_end = (st + 1) * 27
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..26]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_5
action_3 (9) = happyShift action_16
action_3 (10) = happyShift action_17
action_3 (11) = happyShift action_18
action_3 (12) = happyShift action_19
action_3 (13) = happyShift action_20
action_3 (14) = happyShift action_6
action_3 (15) = happyShift action_21
action_3 (16) = happyShift action_7
action_3 (19) = happyShift action_8
action_3 (21) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (27) = happyAccept
action_3 (4) = happyGoto action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (16) = happyShift action_7
action_6 (19) = happyShift action_8
action_6 (21) = happyShift action_9
action_6 (26) = happyShift action_10
action_6 (4) = happyGoto action_14
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_2
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (16) = happyShift action_7
action_7 (19) = happyShift action_8
action_7 (21) = happyShift action_9
action_7 (26) = happyShift action_10
action_7 (4) = happyGoto action_13
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (26) = happyShift action_12
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (19) = happyShift action_8
action_9 (21) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (4) = happyGoto action_11
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_14

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_16
action_11 (10) = happyShift action_17
action_11 (11) = happyShift action_18
action_11 (12) = happyShift action_19
action_11 (13) = happyShift action_20
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_21
action_11 (16) = happyShift action_7
action_11 (19) = happyShift action_8
action_11 (21) = happyShift action_9
action_11 (22) = happyShift action_30
action_11 (26) = happyShift action_10
action_11 (4) = happyGoto action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (20) = happyShift action_29
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_16
action_13 (10) = happyShift action_17
action_13 (11) = happyShift action_18
action_13 (12) = happyShift action_19
action_13 (13) = happyShift action_20
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_21
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_28
action_13 (19) = happyShift action_8
action_13 (21) = happyShift action_9
action_13 (26) = happyShift action_10
action_13 (4) = happyGoto action_15
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_6
action_14 (19) = happyShift action_8
action_14 (21) = happyShift action_9
action_14 (4) = happyGoto action_15
action_14 _ = happyReduce_9

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (9) = happyShift action_16
action_15 (10) = happyShift action_17
action_15 (11) = happyShift action_18
action_15 (12) = happyShift action_19
action_15 (13) = happyShift action_20
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_21
action_15 (16) = happyShift action_7
action_15 (19) = happyShift action_8
action_15 (21) = happyShift action_9
action_15 (26) = happyShift action_10
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_13

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (19) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (4) = happyGoto action_27
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (19) = happyShift action_8
action_17 (21) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (4) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (16) = happyShift action_7
action_18 (19) = happyShift action_8
action_18 (21) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (4) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (16) = happyShift action_7
action_19 (19) = happyShift action_8
action_19 (21) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (4) = happyGoto action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (19) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (4) = happyGoto action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (19) = happyShift action_8
action_21 (21) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (4) = happyGoto action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyFail []
action_22 (7) = happyFail []
action_22 (8) = happyFail []
action_22 (9) = happyShift action_16
action_22 (10) = happyShift action_17
action_22 (11) = happyShift action_18
action_22 (12) = happyShift action_19
action_22 (13) = happyShift action_20
action_22 (14) = happyShift action_6
action_22 (15) = happyFail []
action_22 (16) = happyFail []
action_22 (19) = happyShift action_8
action_22 (21) = happyShift action_9
action_22 (26) = happyFail []
action_22 (4) = happyGoto action_15
action_22 _ = happyReduce_10

action_23 (14) = happyShift action_6
action_23 (19) = happyShift action_8
action_23 (21) = happyShift action_9
action_23 (4) = happyGoto action_15
action_23 _ = happyReduce_8

action_24 (14) = happyShift action_6
action_24 (19) = happyShift action_8
action_24 (21) = happyShift action_9
action_24 (4) = happyGoto action_15
action_24 _ = happyReduce_7

action_25 (14) = happyShift action_6
action_25 (19) = happyShift action_8
action_25 (21) = happyShift action_9
action_25 (4) = happyGoto action_15
action_25 _ = happyReduce_6

action_26 (14) = happyShift action_6
action_26 (19) = happyShift action_8
action_26 (21) = happyShift action_9
action_26 (4) = happyGoto action_15
action_26 _ = happyReduce_5

action_27 (14) = happyShift action_6
action_27 (19) = happyShift action_8
action_27 (21) = happyShift action_9
action_27 (4) = happyGoto action_15
action_27 _ = happyReduce_4

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (16) = happyShift action_7
action_28 (19) = happyShift action_8
action_28 (21) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (4) = happyGoto action_34
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (23) = happyShift action_32
action_29 (24) = happyShift action_33
action_29 (5) = happyGoto action_31
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_15

action_31 (25) = happyShift action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_16

action_33 _ = happyReduce_17

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_16
action_34 (10) = happyShift action_17
action_34 (11) = happyShift action_18
action_34 (12) = happyShift action_19
action_34 (13) = happyShift action_20
action_34 (14) = happyShift action_6
action_34 (15) = happyShift action_21
action_34 (16) = happyShift action_7
action_34 (18) = happyShift action_35
action_34 (19) = happyShift action_8
action_34 (21) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (4) = happyGoto action_15
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (19) = happyShift action_8
action_35 (21) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (4) = happyGoto action_39
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (19) = happyShift action_8
action_36 (21) = happyShift action_9
action_36 (23) = happyShift action_32
action_36 (24) = happyShift action_33
action_36 (26) = happyShift action_10
action_36 (4) = happyGoto action_37
action_36 (5) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyFail []
action_37 (7) = happyFail []
action_37 (8) = happyFail []
action_37 (9) = happyShift action_16
action_37 (10) = happyShift action_17
action_37 (11) = happyShift action_18
action_37 (12) = happyShift action_19
action_37 (13) = happyShift action_20
action_37 (14) = happyShift action_6
action_37 (15) = happyFail []
action_37 (16) = happyFail []
action_37 (19) = happyShift action_8
action_37 (21) = happyShift action_9
action_37 (26) = happyFail []
action_37 (4) = happyGoto action_15
action_37 _ = happyReduce_12

action_38 (25) = happyFail []
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (6) = happyFail []
action_39 (7) = happyFail []
action_39 (8) = happyFail []
action_39 (9) = happyShift action_16
action_39 (10) = happyShift action_17
action_39 (11) = happyShift action_18
action_39 (12) = happyShift action_19
action_39 (13) = happyShift action_20
action_39 (14) = happyShift action_6
action_39 (15) = happyFail []
action_39 (16) = happyFail []
action_39 (19) = happyShift action_8
action_39 (21) = happyShift action_9
action_39 (26) = happyFail []
action_39 (4) = happyGoto action_15
action_39 _ = happyReduce_11

action_40 (23) = happyShift action_32
action_40 (24) = happyShift action_33
action_40 (5) = happyGoto action_38
action_40 _ = happyFail (happyExpListPerState 40)

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
	(HappyAbsSyn5  happy_var_4) `HappyStk`
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
		 (happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 27 27 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenEq -> cont 15;
	TokenIf -> cont 16;
	TokenThen -> cont 17;
	TokenElse -> cont 18;
	TokenLam -> cont 19;
	TokenColon -> cont 20;
	TokenOpenParen -> cont 21;
	TokenCloseParen -> cont 22;
	TokenBool -> cont 23;
	TokenNumType -> cont 24;
	TokenArrow -> cont 25;
	TokenVar happy_dollar_dollar -> cont 26;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 27 tk tks = happyError' (tks, explist)
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
