module Common.Environments (printHelp, printVersion,mainAct) where

-- accessing environment variables
import System.Environment

-- exit codes
import System.Exit

-- accessing command line arguments
-- getArgs :: IO [String]
-- getProgName :: IO String
-- getEnvironment :: IO [(String,String)]
-- lookupEnv :: String -> IO (Maybe,String)

----- Change the args locally for an IO action
-- withArgs :: [String] -> IO a -> IO a
-- withProgName :: String -> IO a -> IO a

----- Exiting                                > 0
-- data ExitCode = ExitSuccess | ExitFailure Int
-- exitWith :: ExitCode -> IO a
-- exitFailure :: IO a
-- exitSuccess :: IO a
-- die :: String -> IO a
--
