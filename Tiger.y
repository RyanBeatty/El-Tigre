{
module Tiger (parser) where
import Lexer as Lex
import AST
import Tokens as Tok
}

%monad{Lex.P}
%lexer{Lex.lexer}{Tok.EofToken}
%name parser
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
  '{'        { LbraceToken }
  '}'        { RbraceToken }
  '['        { LbrackToken }
  ']'        { RbrackToken }
  '('        { LparenToken }
  ')'        { RparenToken }
  ';'        { SemicolonToken }
  ':'        { ColonToken }
  ','        { CommaToken }
  string     { StringToken $$ }
  int        { IntToken $$ }
  id         { IdToken $$ }
  eof        { EofToken }

%%

----------------------------------------------------------
-- List of declarations.
DecList : {- empty production -}  { [] }
        | DecList_                { reverse $1 }

DecList_ : Dec                    { [$1] }
         | DecList_ Dec           { $2 : $1 }

-- A declaration can be a type, variable, or function declaration.
Dec : TypeDec  { AST.TDec $1 }       
    | VarDec   { AST.VDec $1 }
    | FunDec   { AST.FDec $1 }

----------------------------------------------------------
-- Function declaration in Tiger language. Can either be a
-- procedure declaration or a function declaration.
FunDec : function id '(' TyFields ')' '=' Exp        { AST.ProcDec $2 $4 $7 }
       | function id '(' TyFields ')' ':' id '=' Exp   { AST.FunDec $2 $4 $7 $9 }

----------------------------------------------------------
-- Type declaration in Tiger language. A type declaration
-- can either by a built-in type, record, or array.
TypeDec : type id '=' Type           { AST.TypeDec $2 $4 }

Type : id                            { AST.Type $1 }
     | '{' TyFields '}'              { AST.Record $2 }
     | array of id                   { AST.Array $3 }

TyFields : {- empty production -}    { [] }
         | TyFields_                 { reverse $1 }

TyFields_ : id ':' id                { [AST.TyField $1 $3] }
          | TyFields_ ',' id ':' id  { AST.TyField $3 $5 : $1 }

----------------------------------------------------------
-- Variable declarations can omit or make explicit the
-- type of the declared variable.
VarDec : var id ':=' Exp         { AST.VarDec $2 $4}
       | var id ':' id ':=' Exp  { AST.VarDecL $2 $4 $6}

----------------------------------------------------------
Exp : int                { AST.IntLit $1 }
    | string             { AST.StringLit $1 }

--LValue : id               { AST.Var $1 }
--       | LValue '.' id    { AST.RecField $1 $3 }

{

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

}