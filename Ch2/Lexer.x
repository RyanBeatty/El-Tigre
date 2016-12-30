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
  type            {action typeToken}
  function        {action functionToken}
  break           {action breakToken}
  of              {action ofToken}
  end             {action endToken}
  in              {action inToken}
  nil             {action nilToken}
  let             {action letToken}
  do              {action doToken}
  to              {action toToken}
  for             {action forToken}
  while           {action whileToken}
  else            {action elseToken}
  then            {action thenToken}
  if              {action ifToken}
  array           {action arrayToken}
  ":="            {action assignToken}
  or              {action orToken}
  "&"             {action andToken}
  ">="            {action geToken}
  ">"             {action gtToken}
  "<="            {action leToken}
  "<"             {action ltToken}
  "<>"            {action neqToken}
  "="             {action eqToken}
  "/"             {action divideToken}
  "*"             {action timesToken}
  "-"             {action minusToken}
  "+"             {action plusToken}
  "."             {action dotToken}
  "{"             {action lbraceToken}
  "}"             {action rbraceToken}
  "["             {action lbrackToken}     
  "]"             {action rbrackToken}
  "("             {action lparenToken}
  ")"             {action rparenToken}
  ";"             {action semicolonToken}
  ":"             {action colonToken}
  ","             {action commaToken}

  @id             {\(pos, _, s) len -> return (idToken (take len s, line pos, col pos) :: String)}

  @intLiteral     {\(pos, _, s) len -> return (intToken (read (take len s) :: Int, line pos, col pos) :: String)}

  --<0> \"          {begin string}
  --<string> [^\"]  {\(pos, _, s) len -> return (stringToken (take len s, line pos, col pos)) :: String}
  --<string> \"     {begin 0}

{
---------------------------
-- Some action helpers.
offset :: AlexPosn -> Int
offset (AlexPn o _ _) = o

line :: AlexPosn -> Int
line (AlexPn _ l _) = l

col :: AlexPosn -> Int
col (AlexPn _ _ c) = c

action f (pos, _, _) _ = return $ f (line pos, col pos)
----------------------------

alexEOF :: Alex String
alexEOF = return eofToken

lexer str = runAlex str getTokens

getTokens = do
  tok <- alexMonadScan
  if tok == eofToken
  then return [tok]
  else do toks <- getTokens
          return $ tok : toks

main = do
    s <- getContents
    let tokens = case lexer s of
                    Left msg -> msg
                    Right ts -> intercalate "\n" ts
    print tokens
}