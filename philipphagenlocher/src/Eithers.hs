module Eithers where

data Either a b = Left a | Right b 

-- lists of string and ints

type IntStr = Either Int String

[Left 1, Right "Hello"] :: IntStr

import Data.Either

--lefts
--rights 
--isLeft
--isRight
--fromLeft
--fromRight
--fromEither
--either
--partitionEithers


-- used for error handling