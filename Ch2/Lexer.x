{
module Lexer (main) where
}

%wrapper "posn"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@id = $alpha [$alpha $digit \_]*

tokens :-

  $white+               ;
  @id                   {\pos s -> Let $ line pos}

{
-- Some action helpers.
offset :: AlexPosn -> Int
offset (AlexPosn o _ _) = o

line :: AlexPosn -> Int
line (AlexPosn _ l _) = l

col :: AlexPosn -> Int
col (AlexPosn _ _ c) = c

data Token = Let Int

main = do
    s <- getContents
    print (alexScanTokens s)
}