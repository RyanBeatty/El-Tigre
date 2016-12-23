module Driver (parse) where

import Lexer (alexScanTokens)
import Tokens (Tokens)

import Data.List (intercalate)

parseFile :: String -> IO ()
parseFile filename = do
    contents <- readFile filename
    print $ parse contents

parse :: String -> String
parse contents = intercalate "\n" $ Lexer.alexScanTokens contents

interactParse :: IO ()
interactParse = interact parse
