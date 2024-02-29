module Main where

import Data.Char (toLower)

processStrings :: [String] -> ([String], [String])
processStrings strs =
    let
        isShortOrContainsR = \str -> length str <= 3 || elem 'r' (map toLower str)
        shortOrContainsR = filter isShortOrContainsR strs
        notShortOrContainsR = filter (not . isShortOrContainsR) strs
    in
        (shortOrContainsR, notShortOrContainsR)

main :: IO()
main = do
    print $ processStrings ["ABCDE", "AF", "ABBA", "aber", "VR headset"]
    print $ processStrings []
    print $ processStrings ["a", "aa", "aaa", "aaaa", "aaaaa"]