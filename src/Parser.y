{
module Parser (parser, runParser) where
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
  type       { Tok.TypeToken }
  var        { Tok.VarToken }
  function   { Tok.FunctionToken }
  break      { Tok.BreakToken }
  of         { Tok.OfToken }
  end        { Tok.EndToken }
  in         { Tok.InToken }
  nil        { Tok.NilToken }
  let        { Tok.LetToken }
  do         { Tok.DoToken }
  to         { Tok.ToToken }
  for        { Tok.ForToken }
  while      { Tok.WhileToken }
  else       { Tok.ElseToken }
  then       { Tok.ThenToken }
  if         { Tok.IfToken }
  array      { Tok.ArrayToken }
  ':='       { Tok.AssignToken }
  '|'        { Tok.OrToken }
  '&'        { Tok.AndToken }
  '>='       { Tok.GeToken }
  '>'        { Tok.GtToken }
  '<='       { Tok.LeToken }
  '<'        { Tok.LtToken }
  '<>'       { Tok.NeqToken }
  '='        { Tok.EqToken }
  '/'        { Tok.DivideToken }
  '*'        { Tok.TimesToken }
  '-'        { Tok.MinusToken }
  '+'        { Tok.PlusToken }
  '.'        { Tok.DotToken }
  '{'        { Tok.LbraceToken }
  '}'        { Tok.RbraceToken }
  '['        { Tok.LbrackToken }
  ']'        { Tok.RbrackToken }
  '('        { Tok.LparenToken }
  ')'        { Tok.RparenToken }
  ';'        { Tok.SemicolonToken }
  ':'        { Tok.ColonToken }
  ','        { Tok.CommaToken }
  string     { Tok.StringToken $$ }
  int        { Tok.IntToken $$ }
  id         { Tok.IdToken $$ }

%nonassoc ':=' do of then
%left else
%nonassoc '&' '|'
%nonassoc '=' '<>' '>' '<' '>=' '<='
%left '+' '-'
%left '*' '/'
%left NEG

%%

Program : Exp { $1 }

Exp : LValue      { AST.LVal $1 }
    | nil         { AST.Nil }
    | Seq         { $1 }
    | int         { AST.IntLit $1 }
    | string      { AST.StringLit $1 }
    | Neg         { $1 }
    | FunCall     { $1 }
    | Arithmetic  { $1 }
    | Comparison  { $1 }
    | Boolean     { $1 }
    | RecExp      { $1 }
    | ArrExp      { $1 }
    | Assign      { $1 }
    | Branch      { $1 }
    | While       { $1 }
    | For         { $1 }
    | break       { AST.Break }
    | Let         { $1 }
    | Parens      { $1 }

-- LValue_ is to fix shift-reduce conflict with ArrExp.
LValue : id       { AST.Var $1 }
       | LValue_  { $1 }  
LValue_ : id '.' id            { AST.RecField (AST.Var $1) $3 }
        | LValue_ '.' id       { AST.RecField $1 $3 }
        | id '[' Exp ']'       { AST.ArrSubscript (AST.Var $1) $3 }
        | LValue_ '[' Exp ']'  { AST.ArrSubscript $1 $3 }

-- A sequence is a list of two or more expressions separated
-- by a semicolon.
Seq : '(' Exp ';' Exp Seq_ ')' { AST.Seq ($2 : $4 : reverse $5) }
Seq_ : {- empty production -} { [] }
     | Seq_ ';' Exp           { $3 : $1 }

Neg : '-' int %prec NEG  { AST.Neg $2 }

-- A function call is the function name identifier and a
-- list of parameters.
FunCall : id '(' Params ')' { AST.FunCall $1 (reverse $3) }
Params : {- empty production -}  { [] }
       | Exp                     { [$1] }
       | Params ',' Exp          { $3 : $1 }

Arithmetic : Exp '+' Exp  { AST.ArithOp AST.Plus $1 $3 }
           | Exp '-' Exp  { AST.ArithOp AST.Minus $1 $3 }
           | Exp '/' Exp  { AST.ArithOp AST.Div $1 $3 }
           | Exp '*' Exp  { AST.ArithOp AST.Mult $1 $3 }

Comparison : Exp '=' Exp   { AST.CompOp AST.Eq $1 $3 }
           | Exp '<>' Exp  { AST.CompOp AST.Neq $1 $3 }
           | Exp '>' Exp   { AST.CompOp AST.Gt $1 $3 }
           | Exp '<' Exp   { AST.CompOp AST.Lt $1 $3 }
           | Exp '>=' Exp  { AST.CompOp AST.Ge $1 $3 }
           | Exp '<=' Exp  { AST.CompOp AST.Le $1 $3 }

Boolean : Exp '&' Exp { AST.LogOp AST.And $1 $3 }
        | Exp '|' Exp { AST.LogOp AST.Or $1 $3 }

-- A record expression creates a new record. Has a type-id
-- and optional list of initialized record fields.
RecExp : id '{' Fields '}'  { AST.RecExp $1 (reverse $3) }
Fields : {- empty production -} { [] }
       | id '=' Exp             { [AST.Field $1 $3] }
       | Fields ',' id '=' Exp  { AST.Field $3 $5 : $1 }

-- An array expression has a type-id. Exp1 is the length
-- and Exp2 is the default value.
ArrExp : id '[' Exp ']' of Exp { AST.ArrExp $1 $3 $6 }

-- Assignment expression.
Assign : LValue ':=' Exp  { AST.Assign $1 $3 }

-- A branching expression can have an optional else clause.
Branch : if Exp then Exp else Exp  { AST.Branch $2 $4 (Just $6) }
       | if Exp then Exp           { AST.Branch $2 $4 Nothing }

While : while Exp do Exp  { AST.While $2 $4 }

For : for id ':=' Exp to Exp do Exp  { AST.For $2 $4 $6 $8 }

Let : let DecList in ExpSeq end  { AST.Let $2 (reverse $4) }
ExpSeq : {- empty production -} { [] }
       | Exp             { [$1] }
       | ExpSeq ';' Exp  { $3 : $1 }

Parens : '(' Exp ')' { $2 }

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


{

-- Needs to be defined for Happy to compile
happyError = error "Parser error!"

runParser :: String -> Either String Exp
runParser input = runAlex input parser

main = do
  s <- getContents
  let ast = case runParser s of
              Left msg -> msg
              Right ast' -> show ast'
  print ast

}