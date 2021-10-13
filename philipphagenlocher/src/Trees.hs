module Trees where

data Tree a = Leaf | Node (Tree a) a (Tree a) deriving Show

intTupleTree :: Tree (Integer, Integer)
intTupleTree = aux (0,0)
  where
    aux (left, right) = Node (aux $ (left+1, right)) (left, right) (aux $ (left, right+1))

cut :: Integer -> Tree a -> Tree a
cut 0 _ = Leaf
cut n Leaf = Leaf
cut n (Node l v r) = Node (cut (n-1) l) v (cut (n-1) r)

