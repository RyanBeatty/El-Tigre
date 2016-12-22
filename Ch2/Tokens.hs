{-# LANGUAGE TypeFamilies, TypeSynonymInstances, FlexibleInstances #-}
module Tokens where

-- Interface for representing a Token in the Tiger Grammar.
class Tokens a where
    type LineNum a

    typeToken :: (LineNum a, LineNum a) -> a
    varToken :: (LineNum a, LineNum a) -> a
    functionToken :: (LineNum a, LineNum a) -> a
    breakToken :: (LineNum a, LineNum a) -> a
    ofToken :: (LineNum a, LineNum a) -> a
    endToken :: (LineNum a, LineNum a) -> a
    inToken :: (LineNum a, LineNum a) -> a
    nilToken :: (LineNum a, LineNum a) -> a
    letToken :: (LineNum a, LineNum a) -> a
    doToken :: (LineNum a, LineNum a) -> a
    toToken :: (LineNum a, LineNum a) -> a
    forToken :: (LineNum a, LineNum a) -> a
    whileToken :: (LineNum a, LineNum a) -> a
    elseToken :: (LineNum a, LineNum a) -> a
    thenToken :: (LineNum a, LineNum a) -> a
    ifToken :: (LineNum a, LineNum a) -> a
    arrayToken :: (LineNum a, LineNum a) -> a
    assignToken :: (LineNum a, LineNum a) -> a
    orToken :: (LineNum a, LineNum a) -> a
    andToken :: (LineNum a, LineNum a) -> a
    geToken :: (LineNum a, LineNum a) -> a
    gtToken :: (LineNum a, LineNum a) -> a
    leToken :: (LineNum a, LineNum a) -> a
    ltToken :: (LineNum a, LineNum a) -> a
    neqToken :: (LineNum a, LineNum a) -> a
    eqToken :: (LineNum a, LineNum a) -> a
    divideToken :: (LineNum a, LineNum a) -> a
    timesToken :: (LineNum a, LineNum a) -> a
    minusToken :: (LineNum a, LineNum a) -> a
    plusToken :: (LineNum a, LineNum a) -> a
    dotToken :: (LineNum a, LineNum a) -> a
    rbraceToken :: (LineNum a, LineNum a) -> a
    lbraceToken :: (LineNum a, LineNum a) -> a
    rbrackToken :: (LineNum a, LineNum a) -> a
    lbrackToken :: (LineNum a, LineNum a) -> a
    rparenToken :: (LineNum a, LineNum a) -> a
    lparenToken :: (LineNum a, LineNum a) -> a
    semicolonToken :: (LineNum a, LineNum a) -> a
    colonToken :: (LineNum a, LineNum a) -> a
    commaToken :: (LineNum a, LineNum a) -> a
    stringToken :: (String, LineNum a, LineNum a) -> a
    intToken :: (Int, LineNum a, LineNum a) -> a
    idToken :: (String, LineNum a, LineNum a) -> a
    eofToken :: (LineNum a, LineNum a) -> a

instance Tokens String where
    type LineNum String = Int

    typeToken (i, j) = "TYPE   " ++ show i
    varToken (i, j) = "VAR   " ++ show i
    functionToken (i, j) = "FUNCTION   " ++ show i
    breakToken (i, j) = "BREAK   " ++ show i
    ofToken (i, j) = "OF   " ++ show i
    endToken (i, j) = "END   " ++ show i
    inToken (i, j) = "IN   " ++ show i
    nilToken (i, j) = "NIL   " ++ show i
    letToken (i, j) = "LET   " ++ show i
    doToken (i, j) = "DO   " ++ show i
    toToken (i, j) = "TO   " ++ show i
    forToken (i, j) = "FOR   " ++ show i
    whileToken (i, j) = "WHILE   " ++ show i
    elseToken (i, j) = "ELSE   " ++ show i
    thenToken (i, j) = "THEN   " ++ show i
    ifToken (i, j) = "IF   " ++ show i
    arrayToken (i, j) = "ARRAY   " ++ show i
    assignToken (i, j) = "ASSIGN   " ++ show i
    orToken (i, j) = "OR   " ++ show i
    andToken (i, j) = "AND   " ++ show i
    geToken (i, j) = "GE   " ++ show i
    gtToken (i, j) = "GT   " ++ show i
    leToken (i, j) = "LE   " ++ show i
    ltToken (i, j) = "LT   " ++ show i
    neqToken (i, j) = "NEQ   " ++ show i
    eqToken (i, j) = "EQ   " ++ show i
    divideToken (i, j) = "DIVIDE   " ++ show i
    timesToken (i, j) = "TIMES   " ++ show i
    minusToken (i, j) = "MINUS   " ++ show i
    plusToken (i, j) = "PLUS   " ++ show i
    dotToken (i, j) = "DOT   " ++ show i
    rbraceToken (i, j) = "RBRACE   " ++ show i
    lbraceToken (i, j) = "LBRACE   " ++ show i
    rbrackToken (i, j) = "RBRACK   " ++ show i
    lbrackToken (i, j) = "LBRACK   " ++ show i
    rparenToken (i, j) = "RPAREN   " ++ show i
    lparenToken (i, j) = "LPAREN   " ++ show i
    semicolonToken (i, j) = "SEMICOLON   " ++ show i
    colonToken (i, j) = "COLON   " ++ show i
    commaToken (i, j) = "COMMA   " ++ show i
    stringToken (s, i, j) = "STRING(" ++ s ++ ")     " ++ show i
    intToken (n, i, j) = "INT(" ++ show n ++ ")   " ++ show i
    idToken (s, i, j) = "ID(" ++ s ++ ")     " ++ show i
    eofToken (i, j) = "EOF   " ++ show i




