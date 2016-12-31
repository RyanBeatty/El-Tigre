module Driver (parse) where

import Lexer (lexer)
import Tokens (Tokens)

import Data.List (intercalate)

parseFile :: String -> IO ()
parseFile filename = do
    contents <- readFile filename
    print $ parse contents

parse :: String -> String
parse contents =
    case lexer contents of
        Left msg      -> msg
        Right tokens -> intercalate "\n" tokens

interactParse :: IO ()
interactParse = interact parse
