module Semant () where

import qualified Translate as Trans
import Types

data ExpType = ExpType {
      exp :: Trans.Exp
    , ty :: Types.Type
}
