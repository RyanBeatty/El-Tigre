{-# LANGUAGE TypeFamilies #-}
module Tokens () where

-- Interface for representing a Token in the Tiger Grammar.
class Tokens a where
    type LineNum a
    type Token a

    typeToken :: (LineNum a, LineNum a) -> Token a
    varToken :: (LineNum a, LineNum a) -> Token a
    functionToken :: (LineNum a, LineNum a) -> Token a
    breakToken :: (LineNum a, LineNum a) -> Token a
    ofToken :: (LineNum a, LineNum a) -> Token a
    endToken :: (LineNum a, LineNum a) -> Token a
    inToken :: (LineNum a, LineNum a) -> Token a
    nilToken :: (LineNum a, LineNum a) -> Token a
    letToken :: (LineNum a, LineNum a) -> Token a
    doToken :: (LineNum a, LineNum a) -> Token a
    toToken :: (LineNum a, LineNum a) -> Token a
    forToken :: (LineNum a, LineNum a) -> Token a
    whileToken :: (LineNum a, LineNum a) -> Token a
    elseToken :: (LineNum a, LineNum a) -> Token a
    thenToken :: (LineNum a, LineNum a) -> Token a
    ifToken :: (LineNum a, LineNum a) -> Token a
    arrayToken :: (LineNum a, LineNum a) -> Token a
    assignToken :: (LineNum a, LineNum a) -> Token a
    orToken :: (LineNum a, LineNum a) -> Token a
    andToken :: (LineNum a, LineNum a) -> Token a
    geToken :: (LineNum a, LineNum a) -> Token a
    gtToken :: (LineNum a, LineNum a) -> Token a
    leToken :: (LineNum a, LineNum a) -> Token a
    ltToken :: (LineNum a, LineNum a) -> Token a
    neqToken :: (LineNum a, LineNum a) -> Token a
    eqToken :: (LineNum a, LineNum a) -> Token a
    divideToken :: (LineNum a, LineNum a) -> Token a
    timesToken :: (LineNum a, LineNum a) -> Token a
    minusToken :: (LineNum a, LineNum a) -> Token a
    plusToken :: (LineNum a, LineNum a) -> Token a
    dotToken :: (LineNum a, LineNum a) -> Token a
    rbraceToken :: (LineNum a, LineNum a) -> Token a
    lbraceToken :: (LineNum a, LineNum a) -> Token a
    rbrackToken :: (LineNum a, LineNum a) -> Token a
    lbrackToken :: (LineNum a, LineNum a) -> Token a
    rparenToken :: (LineNum a, LineNum a) -> Token a
    lparenToken :: (LineNum a, LineNum a) -> Token a
    semicolonToken :: (LineNum a, LineNum a) -> Token a
    colonToken :: (LineNum a, LineNum a) -> Token a
    commaToken :: (LineNum a, LineNum a) -> Token a
    stringToken :: (String, LineNum a, LineNum a) -> Token a
    intToken :: (Int, LineNum a, LineNum a) -> Token a
    idToken :: (String, LineNum a, LineNum a) -> Token a
    eofToken :: (LineNum a, LineNum a) -> Token a




