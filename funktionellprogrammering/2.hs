import Data.List (delete)

targetSumPairs :: [Int] -> Int -> ([(Int, Int)], [Int])
targetSumPairs nums target = findPairs nums [] target
    where
        findPairs :: [Int] -> [(Int, Int)] -> Int -> ([(Int, Int)], [Int])
        findPairs [] pairs _ = (pairs, [])
        findPairs (x:xs) pairs t =
            let complement = t - x in
                if complement `elem` xs then
                    findPairs (delete complement xs) ((x, complement) : pairs) t
                else 
                    let (foundPairs, unmatched) = findPairs xs pairs t in
                        (foundPairs, x : unmatched)