module HigherOrderFunctions where

  
-- a predicate is a function that returns a Bool

-- a higher order function takes a function as an argument
---- map :: (a -> b) -> [a] -> [b]
---- filter :: (a -> Bool) -> [a] -> [a]

app :: (a -> b) -> a -> b 
app f x = f x

add1 :: Int -> Int
add1 x = x + 1

result = app add1 1

-- anonymous functions
add2Fn = (\x -> x + 2)

result2 = app add2Fn 1

-- inline anonymous functions
result3 = app (\x -> x + 3) 1
