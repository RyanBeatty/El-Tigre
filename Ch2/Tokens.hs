{-# LANGUAGE TypeFamilies, TypeSynonymInstances, FlexibleInstances #-}
module Tokens (Tokens(..)) where

-- Interface for representing a Token in the Tiger Grammar.
class Tokens a where

    typeToken :: (Int, Int) -> a
    varToken :: (Int, Int) -> a
    functionToken :: (Int, Int) -> a
    breakToken :: (Int, Int) -> a
    ofToken :: (Int, Int) -> a
    endToken :: (Int, Int) -> a
    inToken :: (Int, Int) -> a
    nilToken :: (Int, Int) -> a
    letToken :: (Int, Int) -> a
    doToken :: (Int, Int) -> a
    toToken :: (Int, Int) -> a
    forToken :: (Int, Int) -> a
    whileToken :: (Int, Int) -> a
    elseToken :: (Int, Int) -> a
    thenToken :: (Int, Int) -> a
    ifToken :: (Int, Int) -> a
    arrayToken :: (Int, Int) -> a
    assignToken :: (Int, Int) -> a
    orToken :: (Int, Int) -> a
    andToken :: (Int, Int) -> a
    geToken :: (Int, Int) -> a
    gtToken :: (Int, Int) -> a
    leToken :: (Int, Int) -> a
    ltToken :: (Int, Int) -> a
    neqToken :: (Int, Int) -> a
    eqToken :: (Int, Int) -> a
    divideToken :: (Int, Int) -> a
    timesToken :: (Int, Int) -> a
    minusToken :: (Int, Int) -> a
    plusToken :: (Int, Int) -> a
    dotToken :: (Int, Int) -> a
    rbraceToken :: (Int, Int) -> a
    lbraceToken :: (Int, Int) -> a
    rbrackToken :: (Int, Int) -> a
    lbrackToken :: (Int, Int) -> a
    rparenToken :: (Int, Int) -> a
    lparenToken :: (Int, Int) -> a
    semicolonToken :: (Int, Int) -> a
    colonToken :: (Int, Int) -> a
    commaToken :: (Int, Int) -> a
    stringToken :: (String, Int, Int) -> a
    intToken :: (Int, Int, Int) -> a
    idToken :: (String, Int, Int) -> a
    eofToken :: (Int, Int) -> a

instance Tokens String where

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




