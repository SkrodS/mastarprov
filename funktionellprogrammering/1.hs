module Main where

import Data.Char (toUpper)

-- Function to get the initials of a list of strings
initials :: [String] -> [String]
initials strings = map capitalizeFirstLetter strings

-- Helper function to get the initials of a string
capitalizeFirstLetter :: String -> String
capitalizeFirstLetter str = map toUpperFirst (words (replaceHyphens str))

-- Helper function to capitalize the first letter of a string and return it
toUpperFirst :: String -> Char
toUpperFirst "" = ' '
toUpperFirst (x:xs) = toUpper x

-- Helper function to replace hyphens with spaces
replaceHyphens :: String -> String
replaceHyphens [] = []
replaceHyphens (x:xs)
  | x == '-' = ' ' : replaceHyphens xs
  | otherwise = x : replaceHyphens xs

main :: IO()
main = do
    print $ initials ["james", "---------TiTTDerius-hsj-dfn", "kirk"]
