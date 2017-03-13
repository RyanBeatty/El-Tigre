{
module Lexer (main, lexer, P, runAlex) where

import Symbol (SymbolMap, emptySymbolMap, symbol)
import Tokens

import Data.List (intercalate)
}

%wrapper "monadUserState"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@id = $alpha ($alpha | $digit | \_)*
@intLiteral = $digit+

tokens :-

  <0>type            {action TypeToken}
  <0>var             {action VarToken}
  <0>function        {action FunctionToken}
  <0>break           {action BreakToken}
  <0>of              {action OfToken}
  <0>end             {action EndToken}
  <0>in              {action InToken}
  <0>nil             {action NilToken}
  <0>let             {action LetToken}
  <0>do              {action DoToken}
  <0>to              {action ToToken}
  <0>for             {action ForToken}
  <0>while           {action WhileToken}
  <0>else            {action ElseToken}
  <0>then            {action ThenToken}
  <0>if              {action IfToken}
  <0>array           {action ArrayToken}
  <0>":="            {action AssignToken}
  <0>"|"             {action OrToken}
  <0>"&"             {action AndToken}
  <0>">="            {action GeToken}
  <0>">"             {action GtToken}
  <0>"<="            {action LeToken}
  <0>"<"             {action LtToken}
  <0>"<>"            {action NeqToken}
  <0>"="             {action EqToken}
  <0>"/"             {action DivideToken}
  <0>"*"             {action TimesToken}
  <0>"-"             {action MinusToken}
  <0>"+"             {action PlusToken}
  <0>"."             {action DotToken}
  <0>"{"             {action LbraceToken}
  <0>"}"             {action RbraceToken}
  <0>"["             {action LbrackToken}     
  <0>"]"             {action RbrackToken}
  <0>"("             {action LparenToken}
  <0>")"             {action RparenToken}
  <0>";"             {action SemicolonToken}
  <0>":"             {action ColonToken}
  <0>","             {action CommaToken}

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
action f _ _ = return f

identifierAction (_, _, _, s) len = do
  s <- createSymbol (take len s)
  return $ IdToken s

intLiteralAction (_, _, _, s) len = return $ IntToken (read (take len s) :: Int)

lexerError msg = Alex $ \s -> Left msg

-----------------------------------------------------------
-- Things that need to be defined for alex to work as well
-- as helper functions for changing AlexUserState.
alexEOF = 
  do scd <- getLexerStartCode
     if scd == 0
     then return EofToken
     else lexerError "Lexer finished with invalid start code."

data AlexUserState = AlexUserState {
    lexerCommentDepth  :: Int
  , lexerStringValue   :: String
  , lexerSymbolMap     :: SymbolMap
}

alexInitUserState :: AlexUserState
alexInitUserState = AlexUserState {
    lexerCommentDepth  = 0
  , lexerStringValue   = ""
  , lexerSymbolMap     = emptySymbolMap
}

getLexerSymbolMap :: Alex SymbolMap
getLexerSymbolMap = Alex $ \s@AlexState{alex_ust=ust} -> Right (s, lexerSymbolMap ust)

setLexerSymbolMap :: SymbolMap -> Alex ()
setLexerSymbolMap sm = Alex $ \s -> Right (s{alex_ust=(alex_ust s){lexerSymbolMap=sm}}, ()) 

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
     return (StringToken (reverse s))

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

createSymbol name = do
  sm <- getLexerSymbolMap
  let (s, sm') = symbol name sm
  setLexerSymbolMap sm'
  return s

-----------------------------------------------------------
-- Lexing helpers.
getTokens = do
  tok <- alexMonadScan
  if tok == EofToken
  then return [tok]
  else do toks <- getTokens
          return $ tok : toks

runLexer str = runAlex str getTokens

lexer cont = do
  token <- alexMonadScan
  cont token

-- Type synonym for Alex monad that must be exported
-- for Happy parser to work.
type P a = Alex a

main = do
    s <- getContents
    let tokens = case runLexer s of
                    Left msg -> msg
                    Right ts -> intercalate "\n" $ map show ts
    print tokens
}