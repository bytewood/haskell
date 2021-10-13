
-- declaration optional since Haskell has type inference but is a best practice
-- :: means is of type
doubleMe :: Int -> Int
-- implementation
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else doubleMe x
-- if then else required in haskell
-- function names cannot begin with Capital letters but can use '
-- functions without parameters are called definitions or names
numbers = [1,2,3]
strings = "hello world"


-- lists
---- are homogeneous (items have the same type)
{-
 [] :: [a]
 (:) :: a -> [a] -> [a]
-}
---- equivalent syntax
---- 2 : (1 : [])
---- 2 : 1 : []
---- [2,1]

aList :: [Int]
aList = 2 : (1 : [])
anotherList = [2, 1]
listLength = length ['a', 'b', 'c']

eitherList = [Left True, Right 'x', Left False ]

-- find an element in a list
---- catamorphism design pattern
elem :: Eq a => a -> [a] -> Bool
elem x []      = False
elem x (y : ys) = x == y || elem x ys
-- where `ys` is a convention for list variables.
-- and y is the `head`
-- and ys is the `tail`

{- common list functions
elem     :: (Eq a, Foldable t) => a -> t a -> Bool
any      :: Foldable t => (a -> Bool) -> t a -> Bool
reverse  :: [a] -> [a]
(++)     :: [a] -> [a] -> [a]
filter   :: (a -> Bool) -> [a] -> [a]
map      :: (a -> b) -> [a] -> [b]
minimum
maximum
head
last
sum
-}

-- strings
-- type String = [Char]
---- equivalents
---- 'x' : 'y' : []
---- ['x', 'y']
---- "xy"


joinList x y = x ++ y
-- haskel walks through the entire list on the left of ++ beware

prependToList x y = x:y
-- e.g. 'A':" B C" -> "A B C"
-- 'A' is a character type
-- : adds a number or a character to a list
-- a string is a list of characters

itemAt x i = x !! i
-- e.g. "A B C" !! 2 -> "B"
--      [1,2,3,4]  !! 2 -> 3
-- throws "index too large" exception
-- head, tail, init, last - list functions that don't work on empty lists
-- null
-- reverse
-- take
-- drop
-- maximum
-- minimum
-- sum
-- product
-- 3 'elem' [1,2,3,4,5] -> True
-- "ranges" [1..20] [2,4..20] [20,19..1]
-- cycle
-- repeat
---- take 10 (repeat "ABD ")
-- replicate

--List comprehension
evens xl = [x | x <- xl, even x]


-- infix
--x `fn` y
o0 = True || False

-- prefix
--fn x y
o1 = (||) True False


--pattern matching
nonZero :: Int -> Bool
nonZero 0 = False
nonZero x = True


applyLambda :: (Int -> Bool) -> Int -> Bool
applyLambda anonymousFunction x = anonymousFunction x
res1 = applyLambda (\x -> x > 10) 9
-- or equivalent using (operator section)
res2 = applyLambda ( > 10 ) 11

-- => means where `a` is in the set of Eq
equals :: Eq a => a -> a -> Bool
equals x y = x == y


{-
type classes
Eq           - types that support an equality test
Ord          - types that can be compared
Num          - numeric types
Fractional   - fractional numeric types
Show         - have a string representation
Read         - can be parsed from strings
Enum         - can be enumerated
Bounded      - have a smallest and largest value
Foldable     - container types

id       :: a -> a
const    :: a -> b -> a

( + )    :: Num a => a -> a -> a
( / )    :: Fractional a => a -> a -> a
( <= )   :: Ord a => a -> a -> Bool
-}

-- side effect functions have a return of type IO, the result is an action
{-
type FilePath = String
readFile :: FilePath -> IO String
-}


-- lazy loading


-- Guards
ifThenElse :: Bool -> a -> a -> a
{-
ifThenElse c t e = if c then t else e
-}
ifThenElse c t e
    | c         = t
    | otherwise = e

-- MayBe
-- curry


-- referential transparency
---- given the same inputs, a function will always return the same output




