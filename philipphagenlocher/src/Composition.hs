module Composition where

-- combining functions

-- (.) :: (b -> c) -> (a -> b) -> a -> c 

(f . g) ~= (\x -> f (g x))
  

descSort = reverse . descSort
descSort = (\x -> reverse (sort x))
descSort x = reverse (sort x)


map2d :: (a -> b) -> [[a] -> [b]]
map2d = map.map