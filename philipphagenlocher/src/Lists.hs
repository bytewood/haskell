module Lists where

--import Data.List
---- head
---- tail
---- length
---- init - returns a list with the last element removed
---- null -> Bool
---- elem -> Bool
---- nub - removes duplicates in a list
---- or
---- and
---- product
---- map
---- filter
---- reverse

-- lower case a means any type
empty :: [a]
empty = []

integers :: [Integer]
integers = [1,2,3,4,5]

cons = 1 : 2 : 3 : 4 : 5 : []


-- generate a list
ascending :: Integer -> Integer -> [Integer]
ascending n m
  | m < n  = []
  | m == n = [m]
  | m > n  = n : ascending (n+1) m

-- ranges
range = [2..22]

-- list comprehensions
---- [<gen> | <elem> <- <list>, ..., <guard>, ...]
doubleOdds = [2 * x | x <- [1,2,3,4,5,6,7], odd x, x > 1 ]
tuples = [(x,y) | x <- [1,2,3], x > 1, y <- ['a', 'b', 'c'], y /= 'b']
evens = [even x | x <- [1,2,3,4,5,6,7]]

evens' :: [Int] -> [Int]
evens' [] = []
evens' (x:xs)
  | mod x 2 == 0 = x : evens' xs
  | otherwise    = evens' xs
  
-- list of tuples as map
valueOf :: Eq a => a -> [(a, Integer)] -> [Integer]
valueOf key keyValues = [value | (k, value) <- keyValues, k == key]


elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' e (x:xs) = e == x || elem' e xs


nub' :: Eq a => [a] -> [a]
nub' [] = []
nub' (x:xs)
      | x `elem'` xs = nub' xs
      | otherwise  = x : nub' xs

isAsc :: [Int] -> Bool
isAsc []    = True
isAsc [x]   = True
isAsc (x0:x1:xs) =
  (x0 <= x1) && isAsc (x1:xs)
  
{-
              ◄──────
      1──────►2       3
               ─────► ▲
                      │
                      │
              5 ◄──── 4
      
      [(1,2), (2,3), (3,2), (4,3), (4,5)]
-}
hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] a b = a == b
hasPath ts a b 
  | a == b = True
  | otherwise = 
    let 
      ts' = [(q,r) | (q,r) <- ts, q /= a]
    in
      or [ hasPath ts' r b | (q,r) <- ts, q == a]


append :: x -> [x] -> [x]
append a [] = [a]
append a xs = xs ++ [a]
--postpend a (x:xs) = x : postpend a xs


rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]
