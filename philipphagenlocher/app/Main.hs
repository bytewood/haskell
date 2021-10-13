module Main where
  
import System.Environment(getArgs)
import System.Exit(exitSuccess)

import Common.App(printHelp, printVersion, mainAct)

main :: IO ()
main = do
  args <- getArgs
  if "-h" `elem` args || "--help" `elem` args then
    printHelp >> exitSuccess
  else if "-v" `elem` args || "--version" `elem` args then
    printVersion >> exitSuccess
  else
    mainAct args

-- Test in ghci
-- withArgs ["Hello"] main

-- Compile 
-- ghc --make Main.hs -o out/envir -outputdir out -fforce-recomp -Wall -v
-- --make - also compile imports
-- -v     - show search paths et al
-- -Wall  - show many warnings
-- -Weverything -
