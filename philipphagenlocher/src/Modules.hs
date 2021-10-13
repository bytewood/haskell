module Modules where

-- import a subset of functions 
import Data.Either(fromLeft, fromRight)

-- import a subset by hiding 
import Data.Foldable(foldl', foldr')

-- module alias
import Data.Char as Characters
intStr = Characters.intToDigit 10

-- force quailfied naming
import qualified Data.Maybe
a = Data.Maybe.fromJust $ Just 1

-- importing DataType's
--data SomeType = A | B | C
--import SomeModule (SomeType(..))
--import SomeModule (SomeType(A))
--import SomeModule (SomeType(A,C))

-- one module per file
-- module name == filename
-- start with capital letter


-- a module in sub directory Bar
-- module Bar.Foo where

-- the export list
-- module Foo (fn1, dt1, fn2, ...) where