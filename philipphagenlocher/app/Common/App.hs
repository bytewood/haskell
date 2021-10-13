module Common.App (printHelp, printVersion,mainAct) where

import System.Environment(getProgName,lookupEnv)
import System.Exit(exitFailure)

printHelp :: IO ()
printHelp = do
  progName <- getProgName
  putStrLn $ "Usage: " ++ progName ++ " [-h | --help | -v | --version] <greeting>"

printVersion :: IO ()
printVersion = putStrLn "V0.1.0"

mainAct :: [String] -> IO ()
mainAct [] = do
  putStrLn "Missing Greeting argument"
  printHelp
  exitFailure
mainAct args = do
  let greeting = unwords args
  name <- lookupEnv "USER"
  putStrLn $ maybe "No user to greet!" (\n -> greeting ++ " " ++ n) name
