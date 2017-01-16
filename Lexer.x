{
module Lexer (main, lexer) where

import Tokens

import Data.List (intercalate)
}

%wrapper "monadUserState"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@id = $alpha ($alpha | $digit | \_)*
@intLiteral = $digit+

tokens :-

  <0>type            {action typeToken}
  <0>function        {action functionToken}
  <0>break           {action breakToken}
  <0>of              {action ofToken}
  <0>end             {action endToken}
  <0>in              {action inToken}
  <0>nil             {action nilToken}
  <0>let             {action letToken}
  <0>do              {action doToken}
  <0>to              {action toToken}
  <0>for             {action forToken}
  <0>while           {action whileToken}
  <0>else            {action elseToken}
  <0>then            {action thenToken}
  <0>if              {action ifToken}
  <0>array           {action arrayToken}
  <0>":="            {action assignToken}
  <0>or              {action orToken}
  <0>"&"             {action andToken}
  <0>">="            {action geToken}
  <0>">"             {action gtToken}
  <0>"<="            {action leToken}
  <0>"<"             {action ltToken}
  <0>"<>"            {action neqToken}
  <0>"="             {action eqToken}
  <0>"/"             {action divideToken}
  <0>"*"             {action timesToken}
  <0>"-"             {action minusToken}
  <0>"+"             {action plusToken}
  <0>"."             {action dotToken}
  <0>"{"             {action lbraceToken}
  <0>"}"             {action rbraceToken}
  <0>"["             {action lbrackToken}     
  <0>"]"             {action rbrackToken}
  <0>"("             {action lparenToken}
  <0>")"             {action rparenToken}
  <0>";"             {action semicolonToken}
  <0>":"             {action colonToken}
  <0>","             {action commaToken}

  <0>@id             {identifierAction}

  <0>@intLiteral     {intLiteralAction}

  <0> \"             {beginNewStringValue `andBegin` string}
  <string> [^\"]     {addCurrentToString}  
  <string> \"        {endStringValue `andBegin` 0}

  <0> "/*"           {beginNewComment `andBegin` comment}
  <comment> "/*"     {beginComment}
  <comment> "*/"     {endComment}
  <comment> .        ;

  <0>$white+         ;
  <0> .              {\_ _ -> lexerError "lexer user error occurred"}

{
-----------------------------------------------------------
-- Some action helpers.
line :: AlexPosn -> Int
line (AlexPn _ l _) = l

col :: AlexPosn -> Int
col (AlexPn _ _ c) = c

action f (pos, _, _, _) _ = return $ f (line pos, col pos)

identifierAction (pos, _, _, s) len = return (idToken (take len s, line pos, col pos) :: String)

intLiteralAction (pos, _, _, s) len = return (intToken (read (take len s) :: Int, line pos, col pos) :: String)

lexerError msg = Alex $ \s -> Left msg

-----------------------------------------------------------
-- Things that need to be defined for alex to work as well
-- as helper functions for changing AlexUserState.
alexEOF :: Alex String
alexEOF = 
  do scd <- getLexerStartCode
     if scd == 0
     then return eofToken
     else lexerError "Lexer finished with invalid start code."

data AlexUserState = AlexUserState {
    lexerCommentDepth  :: Int
  , lexerStringValue   :: String
}

alexInitUserState :: AlexUserState
alexInitUserState = AlexUserState {
    lexerCommentDepth  = 0
  , lexerStringValue   = ""
}

getLexerStartCode :: Alex Int
getLexerStartCode = Alex $ \as -> Right (as, alex_scd as)

getLexerCommentDepth :: Alex Int
getLexerCommentDepth = Alex $ \s@AlexState{alex_ust=ust} -> Right (s, lexerCommentDepth ust)

setLexerCommentDepth :: Int -> Alex ()
setLexerCommentDepth ss = Alex $ \s -> Right (s{alex_ust=(alex_ust s){lexerCommentDepth=ss}}, ())

getLexerStringValue :: Alex String
getLexerStringValue = Alex $ \s@AlexState{alex_ust=ust} -> Right (s, lexerStringValue ust)

setLexerStringValue :: String -> Alex ()
setLexerStringValue ss = Alex $ \s -> Right (s{alex_ust=(alex_ust s){lexerStringValue=ss}}, ())

addCharToLexerStringValue :: Char -> Alex ()
addCharToLexerStringValue c = Alex $ \s -> Right (s{alex_ust=(alex_ust s){lexerStringValue=c:lexerStringValue (alex_ust s)}}, ())

beginNewStringValue _ _ =
  do setLexerStringValue ""
     alexMonadScan

addCharToString c _  _  =
    do addCharToLexerStringValue c
       alexMonadScan

addCurrentToString i@(_, _, _, input) len = addCharToString c input len
  where
    c = if (len == 1)
           then head input
           else error "Invalid call to addCurrentToString"

endStringValue (pos, _, _, _) _ =
  do s <- getLexerStringValue
     return (stringToken (reverse s, line pos, col pos) :: String)

beginNewComment _ _ =
  do setLexerCommentDepth 1
     alexMonadScan

beginComment _ _ =
  do depth <- getLexerCommentDepth
     setLexerCommentDepth (depth + 1)
     alexMonadScan

endComment inp len =
  do depth <- getLexerCommentDepth
     if depth < 0
     then error "Invalid call to endComment"
     else if depth == 1
          then do setLexerCommentDepth 0
                  begin 0 inp len
          else do setLexerCommentDepth (depth - 1)
                  alexMonadScan

-----------------------------------------------------------
-- Lexing helpers.
getTokens = do
  tok <- alexMonadScan
  if tok == eofToken
  then return [tok]
  else do toks <- getTokens
          return $ tok : toks

lexer str = runAlex str getTokens

main = do
    s <- getContents
    let tokens = case lexer s of
                    Left msg -> msg
                    Right ts -> intercalate "\n" ts
    print tokens
}