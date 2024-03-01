module Main where

prefixSums :: [Int] -> [Int]
prefixSums list = tail (scanl (+) 0 list)

main :: IO()
main = do
    print $ prefixSums [1, 2, 3, 4, 5]
    print $ prefixSums []
    print $ prefixSums [1]