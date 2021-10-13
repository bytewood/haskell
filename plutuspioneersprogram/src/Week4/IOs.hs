module Week4.IOs where

-- Read from STDIN and write to STDOUT without returning
bar :: IO ()
bar = getLine >>= \s ->
      getLine >>= \t ->
      putStrLn (s ++ t)
      
bar' :: IO String
bar' = getLine >>= \s ->
      getLine >>= \t ->
      IO (s ++ t)
