module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mul Expr Expr
          | And Expr Expr 
          | Or Expr Expr
          | Not Expr
          | Eq Expr Expr
          | If Expr Expr Expr 
          | Var String 
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | List [Expr]
          | Head Expr
          | Tail Expr
          deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        | TList Ty
        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenSub
           | TokenMul
           | TokenAnd 
           | TokenOr
           | TokenNot
           | TokenEq
           | TokenIf
           | TokenThen
           | TokenElse 
           | TokenVar String
           | TokenLam 
           | TokenArrow 
           | TokenColon
           | TokenOpenParen
           | TokenCloseParen
           | TokenBool
           | TokenNumType
           | TokenList
           | TokenHead
           | TokenTail
           | TokenComma
           | TokenOpenBracket
           | TokenCloseBracket
           deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs 
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenMul : lexer cs
lexer ('\\':cs) = TokenLam : lexer cs 
lexer (':':cs) = TokenColon : lexer cs
lexer ('(':cs) = TokenOpenParen : lexer cs
lexer (')':cs) = TokenCloseParen : lexer cs
lexer ('=':'=':cs) = TokenEq : lexer cs 
lexer (',':cs) = TokenComma : lexer cs
lexer ('[':cs) = TokenOpenBracket : lexer cs
lexer (']':cs) = TokenCloseBracket : lexer cs
lexer (c:cs) 
   | isSpace c = lexer cs 
   | isAlpha c = lexerKW (c:cs) 
   | isDigit c = lexerNum (c:cs)

lexerNum :: String -> [Token]
lexerNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest

lexerKW :: String -> [Token]
lexerKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexer rest 
               ("false", rest) -> TokenFalse : lexer rest 
               ("and", rest) -> TokenAnd : lexer rest 
               ("or", rest) -> TokenOr : lexer rest
               ("not", rest) -> TokenNot : lexer rest
               ("if", rest) -> TokenIf : lexer rest 
               ("then", rest) -> TokenThen : lexer rest 
               ("else", rest) -> TokenElse : lexer rest 
               ("Bool", rest) -> TokenBool : lexer rest 
               ("Num", rest) -> TokenNumType : lexer rest
               ("List", rest) -> TokenList : lexer rest
               ("head", rest) -> TokenHead : lexer rest
               ("tail", rest) -> TokenTail : lexer rest
               (var, rest) -> TokenVar var : lexer rest

