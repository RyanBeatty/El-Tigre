{
module Lexer (main, lexer) where

import Tokens

import Control.Monad
import Data.List (intercalate)
}

%wrapper "monad"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@id = $alpha ($alpha | $digit | \_)*
@intLiteral = $digit+

tokens :-

  $white+         ;
  type            {\ainput n -> Alex $ \s@AlexState {alex_pos=pos} -> Right (s, typeToken (line pos, col pos) :: String)}
--  type            {\pos s -> typeToken (line pos, col pos) :: String}
--  function        {\pos s -> functionToken (line pos, col pos) :: String}
--  break           {\pos s -> breakToken (line pos, col pos) :: String}
--  of              {\pos s -> ofToken (line pos, col pos) :: String}
--  end             {\pos s -> endToken (line pos, col pos) :: String}
--  in              {\pos s -> inToken (line pos, col pos) :: String}
--  nil             {\pos s -> nilToken (line pos, col pos) :: String}
--  let             {\pos s -> letToken (line pos, col pos) :: String}
--  do              {\pos s -> doToken (line pos, col pos) :: String}
--  to              {\pos s -> toToken (line pos, col pos) :: String}
--  for             {\pos s -> forToken (line pos, col pos) :: String}
--  while           {\pos s -> whileToken (line pos, col pos) :: String}
--  else            {\pos s -> elseToken (line pos, col pos) :: String}
--  then            {\pos s -> thenToken (line pos, col pos) :: String}
--  if              {\pos s -> ifToken (line pos, col pos) :: String}
--  array           {\pos s -> arrayToken (line pos, col pos) :: String}
--  ":="            {\pos s -> assignToken (line pos, col pos) :: String}
--  or              {\pos s -> orToken (line pos, col pos) :: String}
--  "&"             {\pos s -> andToken (line pos, col pos) :: String}
--  ">="            {\pos s -> geToken (line pos, col pos) :: String}
--  ">"             {\pos s -> gtToken (line pos, col pos) :: String}
--  "<="            {\pos s -> leToken (line pos, col pos) :: String}
--  "<"             {\pos s -> ltToken (line pos, col pos) :: String}
--  "<>"            {\pos s -> neqToken (line pos, col pos) :: String}
--  "="             {\pos s -> eqToken (line pos, col pos) :: String}
--  "/"             {\pos s -> divideToken (line pos, col pos) :: String}
--  "*"             {\pos s -> timesToken (line pos, col pos) :: String}
--  "-"             {\pos s -> minusToken (line pos, col pos) :: String}
--  "+"             {\pos s -> plusToken (line pos, col pos) :: String}
--  "."             {\pos s -> dotToken (line pos, col pos) :: String}
--  "{"             {\pos s -> lbraceToken (line pos, col pos) :: String}
--  "}"             {\pos s -> rbraceToken (line pos, col pos) :: String}
--  "["             {\pos s -> lbrackToken (line pos, col pos) :: String}     
--  "]"             {\pos s -> rbrackToken (line pos, col pos) :: String}
--  "("             {\pos s -> lparenToken (line pos, col pos) :: String}
--  ")"             {\pos s -> rparenToken (line pos, col pos) :: String}
--  ";"             {\pos s -> semicolonToken (line pos, col pos) :: String}
--  ":"             {\pos s -> colonToken (line pos, col pos) :: String}
--  ","             {\pos s -> commaToken (line pos, col pos) :: String}



--  @id                   { \pos s -> idToken (s, line pos, col pos) :: String }
--  @intLiteral           { \pos s -> intToken (read s :: Int, line pos, col pos) :: String }

{
---------------------------
-- Some action helpers.
offset :: AlexPosn -> Int
offset (AlexPn o _ _) = o

line :: AlexPosn -> Int
line (AlexPn _ l _) = l

col :: AlexPosn -> Int
col (AlexPn _ _ c) = c

tok f = Alex $ \s@AlexState {alex_pos=pos} -> return (s, f (line pos, col pos))
----------------------------

alexEOF = Alex $ \s@AlexState {alex_pos=pos} -> Right (s, eofToken (line pos, col pos) :: String)

lexer str = runAlex str accTokens

accTokens = Alex $ \as -> unAlex alexMonadScan as >>= \(as', s) -> case unAlex alexEOF as of
    Left msg -> Left msg
    Right (as'', s')  -> if s' == s then return (as', [s]) else unAlex accTokens as' >>= \(as''', ss) -> return (as''', s:ss)

main = do
    s <- getContents
    let tokens = case lexer s of
                    Left msg -> msg
                    Right ts -> intercalate "\n" ts
    print tokens
}