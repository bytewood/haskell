module Recursions where

fac n = 
  if n <= 1 then
    1
  else
    n * fac (n - 1)

-- alternatives
---- PatternMatching
---- Guards
---- Accumulators