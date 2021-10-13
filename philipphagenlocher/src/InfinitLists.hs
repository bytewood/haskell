module InfinitLists where

ones = 1:ones

fiveOnes = take 5 ones

twos = map (+1) ones

fiveTwos = take 5 twos

naturals = ascend 1
  where ascend n = n : (ascend $ n+1)

evens = map (*2) naturals
odds = filter (\x -> mod x 2 == 0) naturals


-- we can
---- transform - map, filter, list comprehensions
---- take and drop and use pattern matching
---- build new lists from infinite lists

-- we cannot
---- evaluate the whole list
---- evaluate the end
---- cannot use folding


-- examples
---- prime numbers
---- fibonacci sequence
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

--??? fibs3 = 0 : 1 : 1 : zipWith3 (+) fibs3 (tail fibs3) 

---- Cumulative Sums