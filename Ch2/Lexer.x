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
  @id                   {\pos s -> idToken (s, (line pos) :: LineNum String, (col pos) :: LineNum String) :: Tokens String }

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


data TigerToken =
      Type AlexPosn
    | Var AlexPosn
    | Function AlexPosn
    | Break AlexPosn
    | Of AlexPosn
    | End AlexPosn
    | In AlexPosn
    | Nil AlexPosn
    | Let AlexPosn
    | Do AlexPosn
    | To AlexPosn
    | For AlexPosn
    | While AlexPosn
    | Else AlexPosn
    | Then AlexPosn
    | If AlexPosn
    | Array AlexPosn
    | Assign AlexPosn
    | Or AlexPosn
    | And AlexPosn
    | GE AlexPosn
    | GT AlexPosn
    | LE AlexPosn
    | LT AlexPosn
    | NEQ AlexPosn
    | EQ AlexPosn
    | Divide AlexPosn
    | Times AlexPosn
    | Minus AlexPosn
    | Plus AlexPosn
    | Dot AlexPosn
    | RBrace AlexPosn
    | LBrace AlexPosn
    | RBrack AlexPosn
    | LBrack AlexPosn
    | RParen AlexPosn
    | LParen AlexPosn
    | SemiColon AlexPosn
    | Colon AlexPosn
    | Comma AlexPosn
    | StrTok String AlexPosn
    | IntTok Int AlexPosn
    | ID String AlexPosn
    | EOF AlexPosn
    deriving (Eq, Show)

main = do
    s <- getContents
    print (alexScanTokens s)
}