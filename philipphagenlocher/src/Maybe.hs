module Maybe where

-- data Maybe a = Nothing | Just a
-- import Data.Maybe
---- isJust     :: Maybe a -> Bool
---- isNothing  :: Maybe a -> Bool
---- fromJust   :: Maybe a -> a
---- fromMaybe  :: a -> Maybe a -> a

safediv :: Integral a => a -> a -> Maybe a
safediv a b = if b == 0 then Nothing else Just $ div a b
