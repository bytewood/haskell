module Folding where

-- foldr - read elements from right to left
-- foldr :: (a -> b -> b) -> b -> [a] -> b
-- foldr (\element accumulator -> ...) <start_accumulator> <list>
-- count e = foldr (\x a -> if e==x then a+1 else a) 0
-- sum = foldr (+) 0
-- and = foldr (&&) True
-- or  = foldr (||) False

-- isAll e = foldr (\x -> (&&) $ e==x) True
-- isAll e = foldr (\x a -> e==x && a) True

-- length = foldr(\x -> (+) 1) 0
-- length = foldr(const $ (+) 1) 0

-- map = foldr((:) . f) []

-- foldl - read elements from left to right
-- foldl (\accumulator element -> ...) <start_accumulator> <list>

revr :: [a] -> [a]
revr = foldr (\e a -> a ++ [e]) []

revl :: [a] -> [a]
--revl = foldl (\a e -> e : a) []
revl = foldl (flip (:)) []

prefixes :: [a] -> [[a]]
prefixes = foldr (\e a -> [e] : map (e :) a ) []


ljx :: [(Float, Float)] -> Float -> Float -> Float
ljx xs xj x = foldl (\acc (xk,_) ->
         if xj == xk then
           acc
         else
           acc * ((x-xk)/(xj-xk))
       ) 1 xs

lagrange :: [(Float, Float)] -> Float -> Float
lagrange xs x = foldl (\a (xj,y) -> a + (y * ljx xs xj x)) 0 xs

interpolate = lagrange [(1.0,1.0), (2.0,4.0), (3.0,9.0)]
y5 = interpolate 5.0


-- create a fold on a new datatype
---- Trie - prefix tree
data Trie a = Leaf a | Node a [Trie a] deriving Show

trie =  Node 'c' [
          Node 'a' [Leaf 'r', Leaf 't'],
          Node 'o' [
            Node 'o' [Leaf 'l']
          ]
        ]

foldTrie :: (b -> a -> b) -> b -> Trie a -> b
foldTrie f acc (Leaf x) = f acc x
foldTrie f acc (Node x xs) = foldl f' (f acc x) xs
  where
    f' acc t = foldTrie f acc t

-- flip ~= (\acc e -> e:acc)
trieResult = foldTrie (flip :) [] trie
