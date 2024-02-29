prefixSums :: Num a => [a] -> [a]
prefixSums = tail . scanl (+) 0