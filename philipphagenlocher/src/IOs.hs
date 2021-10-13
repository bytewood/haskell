module IOs where

import Data.Char

greet :: IO ()

-- greet is not a function, use "do" to create a input-output-action
-- IO actions can only be used in other IO actions
greet = do
  putStrLn "Hello, What is your name?"
  -- <- is used to get the value of an IO action.
  -- unsafePerformIO could be used but don't use it as it disregards the environment encapsulated by an IO action.
  name <- getLine
  let uname = map toUpper name
  -- brackets are required when concatenating
  putStrLn ("Good to meet you " ++ uname ++ "!")


-- main is not a function but an IO Action
main :: IO ()
main = do
  i <- getLine
  -- note the "do" when we need to call an IO action
  if i /= ":quit" then do
    putStrLn ("Input: " ++ i)
    main
  else
    return ()
    
-- passing in arguments to an IO Action
count :: Int -> Int -> IO ()
count n m = do
  putStrLn (show n)
  -- note no "do" required here
  if n < m then
    count (n+1) n
  else
    return ()
  