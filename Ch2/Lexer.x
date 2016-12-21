{
    module Lexer (main) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@id = $alpha [$alpha $digit \_]*

tokens :-

  $white+               ;

{
    main = undefined
}