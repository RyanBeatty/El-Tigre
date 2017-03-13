module Tokens (TigerToken(..)) where

import Symbol (Symbol)

-- ADT for Tokens in the Tiger language
data TigerToken =
      TypeToken
    | VarToken
    | FunctionToken
    | BreakToken
    | OfToken
    | EndToken
    | InToken
    | NilToken
    | LetToken
    | DoToken
    | ToToken
    | ForToken
    | WhileToken
    | ElseToken
    | ThenToken
    | IfToken
    | ArrayToken
    | AssignToken
    | OrToken
    | AndToken
    | GeToken
    | GtToken
    | LeToken
    | LtToken
    | NeqToken
    | EqToken
    | DivideToken
    | TimesToken
    | MinusToken
    | PlusToken
    | DotToken
    | RbraceToken
    | LbraceToken
    | RbrackToken
    | LbrackToken
    | RparenToken
    | LparenToken
    | SemicolonToken
    | ColonToken
    | CommaToken
    | StringToken String
    | IntToken Int
    | IdToken Symbol
    | EofToken
    deriving (Show, Eq)
