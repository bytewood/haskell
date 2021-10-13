module Operators where

-- List prepend (cons)
-- :
aSingleElementList = 1 : [] 
---- can be used in pattern matching to extract multiple elements from a list
---- fn (x0:x1:xs) = ...

-- List/String concatenation
-- ++
concatenatedString = "Hello" ++ " " ++ "World!"
append :: a -> [a] -> [a]
append a [] = [a]
append a xs = xs ++ [a]

-- Get Value of IO Action
-- <-
greet :: IO ()
greet = do
  putStrLn "Whats your name?"
  name <- getLine
  putStrLn ("Hello " ++ name)


--
-- ->

--
-- =>

-- bind
-- >>= :: Monad m => m a -> (a -> m b) -> m b
-- Just 1 >>= (\x -> Just 1)
-- Just 1 >>= Just
maybeAdd :: Num b => Maybe b -> b -> Maybe b 
maybeAdd mx y = mx >>= (\x -> Just $ x+y)

maybeAdd' :: Num b => Maybe b -> Maybe b -> Maybe b 
maybeAdd' mx my = mx >>= (\x -> my >>= (\y -> Just $ x+y))

monadd :: (Monad m, Num b) => m b -> m b -> m b
monadd mx my = mx >>= (\x -> my >>= (\y -> return $ x+y))
--
-- <-
monadd' :: (Monad m, Num b) => m b -> m b -> m b
monadd' mx my = do
  x <- mx 
  y <- my 
  return $ x + y

-- sequencing monads
-- >>
---- m >> n = m >>= \_ -> n
---- Nothing >> Just 1 ==> Nothing
---- Just 1 >> Just 2 ==> Just 2
---- Just 1 >> Nothing ==> Nothing

-- 
-- $ 
---- fn :: (a -> b -> c) -> (d -> e -> f) -> z
---- fn (f1 a b) (f2 d e)
---- fn (f1 a b) $ f2 d e



-- The "Fish" function composition
-- >=>


-- WHNF force evaluation of Functor?
-- $!

-- NF force evaluation of Functor?
-- $!!
---- someIO x = do
----    return $!! map (*2) [1..x]
