module Week4.Eithers where

import Text.Read (readEither)

anyOne :: String -> String -> String -> Either String Int
anyOne x y z = case readEither x of
  Left err -> Left err
  Right k  -> case readEither y of
    Left err -> Left err
    Right l  -> case readEither z of
      Left err -> Left err
      Right m  -> Right (k + l + m)

bindEither :: Either String a -> (a -> Either String b) -> Either String b
bindEither  (Left errorMsg) _ = (Left errorMsg)
bindEither (Right x)        f = f x


anyOne' :: String -> String -> String -> Either String Int
anyOne' x y z = readEither x `bindEither` \ k ->
                                readEither y `bindEither` \ l ->
                                readEither z `bindEither` \ m ->
                                Right (k + l + m)

