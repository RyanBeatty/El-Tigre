module ErrorMsg () where

import System.IO (Handle)

class ErrorMsg a where
    anyErrors    :: a -> Bool
    fileName     :: a -> String
    lineNum      :: a -> Int
    linePos      :: a -> [Int]
    sourceStream :: a -> Handle
    raiseError   :: a -> Int -> String -> ()
    impossible   :: String -> b
    reset        :: a -> a

data TigerError = TigerError {
      ae :: Bool
    , fn :: String
    , ln :: Int
    , lp :: [Int]
    , ss :: Handle
}

--instance ErrorMsg TigerError where
--    anyErrors msg    = ae msg
--    fileName msg     = fn msg
--    lineNum msg      = ln msg
--    linePos msg      = lp msg
--    sourceStream msg = ss msg
