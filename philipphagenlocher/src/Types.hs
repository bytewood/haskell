module Types where

  
type Color = (Int, Int, Int)

newtype Name = Name String deriving Show

name :: Name -> String
name Name x = x


