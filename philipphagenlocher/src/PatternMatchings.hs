module PatternMatchings where

isZero :: Int -> Bool
isZero 0 = True
isZero _ = False

fac 1 = 1
fac n = n * fac (n - 1)
