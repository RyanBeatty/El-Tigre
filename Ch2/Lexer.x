{
module Lexer (main) where

import Tokens
}

%wrapper "posn"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@id = $alpha [$alpha $digit \_]*

tokens :-

  $white+               ;
  @id                   { \pos s -> idToken (s, line pos, col pos) :: String }

{
---------------------------
-- Some action helpers.
offset :: AlexPosn -> Int
offset (AlexPn o _ _) = o

line :: AlexPosn -> Int
line (AlexPn _ l _) = l

col :: AlexPosn -> Int
col (AlexPn _ _ c) = c
----------------------------

main = do
    s <- getContents
    print (alexScanTokens s)
}