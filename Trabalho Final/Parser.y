{
module Parser where

import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    true        { TokenTrue }
    false       { TokenFalse }
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    and         { TokenAnd }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }

%nonassoc if then else
%left '+' and

%%

Exp : true                          { BTrue }
    | false                         { BFalse }
    | num                           { Num $1 }
    | Exp '+' Exp                   { Add $1 $3 }
    | Exp and Exp                   { And $1 $3 }
    | if Exp then Exp else Exp      { If $2 $4 $6 }

{
parseError :: [Token] -> a
parseError ts =  error ("Syntax error")
}