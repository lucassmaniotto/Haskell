{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError } 

%token 
  true          { TokenTrue }
  false         { TokenFalse }
  num           { TokenNum $$ }
  '+'           { TokenAdd }
  '-'           { TokenSub }
  '*'           { TokenMul }
  and           { TokenAnd }
  or            { TokenOr }
  not           { TokenNot }
  '=='          { TokenEq }
  if            { TokenIf }
  then          { TokenThen }
  else          { TokenElse }
  '\\'          { TokenLam }
  ':'           { TokenColon }
  '('           { TokenOpenParen }
  ')'           { TokenCloseParen }
  Bool          { TokenBool }
  Num           { TokenNumType }
  "->"          { TokenArrow }
  ','           { TokenComma }
  '['           { TokenOpenBracket }
  ']'           { TokenCloseBracket }
  List          { TokenList }
  head          { TokenHead }
  tail          { TokenTail }
  null           { TokenNil }
  isNull         { TokenIsNil }
  var           { TokenVar $$ }

%nonassoc if then else var num true false Bool Num "->" '==' head tail List ',' '(' ')' '[' ']' '\\' ':' null isNull
%left '==' '+' '-' '*' or and
%right not

%% 

Exp : true                        { BTrue }
    | false                       { BFalse }
    | num                         { Num $1 }
    | Exp '+' Exp                 { Add $1 $3 }
    | Exp '-' Exp                 { Sub $1 $3 }
    | Exp '*' Exp                 { Mul $1 $3 }
    | Exp and Exp                 { And $1 $3 }
    | Exp or Exp                  { Or $1 $3 }
    | not Exp                     { Not $2 }
    | Exp '==' Exp                { Eq $1 $3 }
    | if Exp then Exp else Exp    { If $2 $4 $6 }
    | '\\' var ':' Ty "->" Exp    { Lam $2 $4 $6 }
    | Exp Exp                     { App $1 $2 }
    | var                         { Var $1 }
    | '(' Exp ')'                 { Paren $2 }
    | '[' ExpList ']'             { List $2 }
    | head Exp                    { Head $2 }
    | tail Exp                    { Tail $2 }
    | null                         { Nil }
    | isNull Exp                   { IsNil $2 }

ExpList : Exp                     { [$1] }
        | Exp ',' ExpList         { $1 : $3 }

Ty  : Bool                        { TBool }
    | Num                         { TNum }
    | '(' Ty "->" Ty ')'          { TFun $2 $4 }
    | List '[' Ty ']'             { TList $3 }

{
parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
}
