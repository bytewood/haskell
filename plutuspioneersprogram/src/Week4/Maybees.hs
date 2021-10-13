module Week4.Maybees where

import Text.Read (readMaybe)

-- Read throws error if `a` is un-parsable
parseBool a = read a :: Bool
parseInt a = read a :: Int
parseFloat a = read a :: Float

--
maybeParseInt a = readMaybe a :: Maybe Int

--
maybeOne :: String -> String -> String -> Maybe Int
maybeOne x y z = case readMaybe x of
  Nothing -> Nothing
  Just k  -> case readMaybe y of
    Nothing -> Nothing
    Just l  -> case readMaybe z of
      Nothing -> Nothing
      Just m  -> Just (k + l + m)

bindMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
bindMaybe Nothing _  = Nothing
bindMaybe (Just x) f = f x

maybeOne' :: String -> String -> String -> Maybe Int
maybeOne' x y z = readMaybe x `bindMaybe` \ k ->
              readMaybe y `bindMaybe` \ l ->
              readMaybe z `bindMaybe` \ m ->
              Just (k + l + m)
