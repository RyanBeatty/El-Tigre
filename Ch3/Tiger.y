{
module Tiger where
import Data.Char
import TigerAST as AST
import Tokens as Tok
}

%name tiger
%tokentype { Tok.TigerToken }

-- Map tokens to terminal symbols
%token 
  type       { TypeToken }
  var        { VarToken }
  function   { FunctionToken }
  break      { BreakToken }
  of         { OfToken }
  end        { EndToken }
  in         { InToken }
  nil        { NilToken }
  let        { LetToken }
  do         { DoToken }
  to         { ToToken }
  for        { ForToken }
  while      { WhileToken }
  else       { ElseToken }
  then       { ThenToken }
  if         { IfToken }
  array      { ArrayToken }
  ':='       { AssignToken }
  or         { OrToken }
  '&'        { AndToken }
  '>='       { GeToken }
  '>'        { GtToken }
  '<='       { LeToken }
  '<'        { LtToken }
  '<>'       { NeqToken }
  '='        { EqToken }
  '/'        { DivideToken }
  '*'        { TimesToken }
  '-'        { MinusToken }
  '+'        { PlusToken }
  '.'        { DotToken }
  '{'        { RbraceToken }
  '}'        { LbraceToken }
  '['        { RbrackToken }
  ']'        { LbrackToken }
  '('        { RparenToken }
  ')'        { LparenToken }
  ';'        { SemicolonToken }
  ':'        { ColonToken }
  ','        { CommaToken }
  string     { StringToken $$ }
  int        { IntToken $$ }
  id         { IdToken $$ }
  eof        { EofToken }

%%

--Dec : TyDec       
--    | VarDec

TypeDec : type id '=' Type           { AST.TypeDec $2 $4 }
Type : id                            { AST.Type $1 }
   | '{' TyFields '}'                { AST.Record $2 }
   | array of id                     { AST.Array $3 }
TyFields  : {- empty production -}   { [] }
          | TyFields_                { reverse $1 }
TyFields_ : id ':' id                { [AST.TyField $1 $3] }
          | TyFields_ ',' id ':' id  { AST.TyField $3 $5 : $1 }

-- Variable declarations can omit or make explicit the
-- type of the declared variable.
VarDec : var id ':=' Expr         { AST.VarDec $2 $4}
       | var id ':' id ':=' Expr  { AST.VarDecL $2 $4 $6}

--LValue : id               { AST.Var $1 }
--       | LValue '.' id    { AST.RecField $1 $3 }

Expr : int                { AST.IntLit $1 }
     | string             { AST.StringLit $1 }


{

-- Needs to be defined for Happy to compile
happyError :: [Tok.TigerToken] -> a
happyError _ = error ("Parse error\n")


--runTiger :: String -> Exp
--runTiger = tiger . lexer

}