module Strictnesses where

-- seq :: a -> b -> b - force evaluation of first argument a, defined in compiler; only one in Haskell
-- seq ab = b
---- functions using seq
---- ($) :: (a -> b) -> -> b
---- f $ x = f x
---- $! :: (a -> ) -> a -> (a -> b) - force evaluation of secon argument
---- f $! x = x `seq` f x

---- used to override lazy evaluation
---- with monads in IO where we actually want the side effect to happen