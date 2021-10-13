module Accumulators where

-- tail recursion
fac n = aux n 1
  where
    aux n acc
      | n <= 1 = acc
      | otherwise = aux (n - 1) (n * acc)

-- can be rewritten by a compiler using a loop