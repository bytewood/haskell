module Exceptions where

import Control.Exception


data NewError = ErrorA deriving Show

instance Exception NewError

-- Exceptions may be thrown from purely functional code but may only be caught in the IO manad


failing :: IO ()
failing = do
  throw ErrorA
  
-- must compile with -XScopedTypeVariables
main :: IO ()
main = do
  catch failing (\(e :: NewError) -> do
    putStrLn "An exceptional circumstanced")
    
    
-- Rather use Either and Maybe in purely functional 
-- useful in IO,  Threads, System Errors