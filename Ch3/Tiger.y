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

--Exp :: { Exp }
--Exp : let var '=' Exp in Exp  { AST.Let $2 $4 $6 }
--    | Exp1                    { AST.Exp1 $1 }

--Exp1 : Exp1 '+' Term          { AST.Plus $1 $3 }
--     | Exp1 '-' Term          { AST.Minus $1 $3 }
--     | Term                   { AST.Term $1 }
--
--Term : Term '*' Factor        { AST.Times $1 $3 }
--     | Term '/' Factor        { AST.Div $1 $3 }
--     | Factor                 { AST.Factor $1 }

Factor : int                  { AST.Int $1 }
--   | var                      { AST.Var $1 }
--   | '(' Exp ')'              { AST.Brack $2 }

{

happyError :: [Tok.TigerToken] -> a
happyError _ = error ("Parse error\n")


--lexer :: String -> [Token]
--lexer [] = []
--lexer (c:cs) 
--    | isSpace c = lexer cs
--    | isAlpha c = lexVar (c:cs)
--    | isDigit c = lexNum (c:cs)
--lexer ('=':cs) = TokenEq : lexer cs
--lexer ('+':cs) = TokenPlus : lexer cs
--lexer ('-':cs) = TokenMinus : lexer cs
--lexer ('*':cs) = TokenTimes : lexer cs
--lexer ('/':cs) = TokenDiv : lexer cs
--lexer ('(':cs) = TokenOB : lexer cs
--lexer (')':cs) = TokenCB : lexer cs

--lexNum cs = TokenInt (read num) : lexer rest
--  where (num,rest) = span isDigit cs
--
--lexVar cs =
--   case span isAlpha cs of
--  ("let",rest) -> TokenLet : lexer rest
--  ("in",rest)  -> TokenIn : lexer rest
--  (var,rest)   -> TokenVar var : lexer rest
--
--runTiger :: String -> Exp
--runTiger = tiger . lexer

}