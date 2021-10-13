module Currying where

-- a.k.a partial functions

add :: Int -> Int -> Int

--add x y = x + y
--add x = (\y -> x + y)
add = (\x -> (\y -> x + y))

