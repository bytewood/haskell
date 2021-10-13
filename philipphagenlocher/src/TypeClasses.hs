module TypeClasses where

-- type constraint Num p =>
sum :: Num p => [p] -> p
sum [] = 0
sum (x:xs) = x + sum xs


-- :info Show
-- :info Ord
-- :info Eq

-- create an instance of a typeclass
data Temperature = Celcius Float | Fahrenheit Float

instance Eq Temperature where
  (==) (Celcius n)    (Celcius m)    = n == m
  (==) (Fahrenheit n) (Fahrenheit m) = n == m 
  (==) (Celcius c)    (Fahrenheit f) = (1.8*c + 32) == f
  (==) (Fahrenheit f) (Celcius c)    = (1.8*c +32)  == f
--not necessary to define /= in Eq TypeClass because {-# MINIMAL (==) | (/=) #-}