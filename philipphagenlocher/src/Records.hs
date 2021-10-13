module Records where

data Person = Person {name :: String, age :: Int}

-- functions name(Person) and age(Person) for free

greet :: Person -> [Char]
-- order of fields important not name
greet (Person name _) = "Hi " ++ name
greet person = "Hi " ++ name person