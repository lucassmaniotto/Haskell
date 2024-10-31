module Lexer where

data Expr = BTrue
          | BFalse
          | Num Int
          | Add Expr Expr
          | And Expr Expr
          | If Expr Expr Expr
          deriving Show

data Ty = TBool
        | TNum
        deriving (Show, Eq)