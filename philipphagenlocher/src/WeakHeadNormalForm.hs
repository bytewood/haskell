module WeakHeadNormalForm where

-- Reductions
---- replace function calls with there atomic form repeatedly until a result is produced
---- Church-Rosser Theorem - the order of the reductions do not affect the result.
---- Only for pure functions (not for side effects)
---- Innermost reductions
------ fully evaluate arguments before applying the function
---- Outermost reductions
------ apply function first
---- Sharing
------ memoization - pure functions only get evaluated once for the same arguments.

-- Normal Form
---- And expression is in normal form if the it is fully evaluated i.e. cannot be reduced further
---- functions can also be in normal form: (\x -> x + 10) - an argument is needed to further reduce.

-- Weak Head Normal Form
---- Data types need to be fully reduced to the first Constructor only
------ (1 + 2) => (1 + 2 ) since () is a tuple Constructor
------ [True && False] => [True && False] since [] is a list constructor
---- Functions need to be re-written in lamba form since (\...) is a constructor (producing a value)
------ f <pattern1> = <expr1>
------ f <pattern2> = <expr2>
------ becomes
------ f = \x -> case x of
                  <pattern1> -> <expr1>
                  <pattern2> -> <expr2>
------ seq ef () - evaluates a expression/function to WHNF
------ deepSeq ef () - fully evaluates expression/function to NF

square :: Num a => a -> a
square x = x * x

{-
innermost reduction
f = fst (square 2, square 3)
f = fst (2*2, square 3)
f = fst (4, square 3)
f = fst (4, 3*3)
f = fst (4, 9)
f = 4

outermost reduction
f = fst (square 2, square 3)
f = square 2
f = 2*2
f = 4 
-> normal form

-}
