module DataTypes where

  
data PrimaryColor = Red | Green | Blue

data PeaNum = Succ PeaNum | Zero

data Calculation = Add Int Int | Sub Int Int | Mul Int Int | Div Int Int

data Tree a = Leaf | Node (Tree a) a (Tree a)

calc :: Calculation -> Int
calc (Add x y) = x+y
calc (Sub x y) = x-y
calc (Mul x y) = x*y
calc (Div x y) = div x y

four :: PeaNum
four = Succ $ Succ $ Succ $ Zero

tree :: Tree Int
tree = Node (Node Leaf 1 Leaf) 2 (Node (Node Leaf 3 Leaf) 4 Leaf)
