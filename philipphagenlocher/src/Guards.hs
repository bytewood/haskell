module Guards where

-- alternative to if-then-else
fac n 
  | n <= 1  = 1
  | otherwise = n * fac (n - 1)

