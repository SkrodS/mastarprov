module Main where

import Data.Char (toUpper)

initials :: [String] -> [String]
initials = map (map (toUpper . head) . words . concat . map replaceHyphenWithSpace)
    where replaceHyphenWithSpace '-' = " "
          replaceHyphenWithSpace c = [c]

main :: IO()
main = do
    print $ initials ["Alice","Bob","Charlie"] -- should return ["A","B","C"]
    print $ initials ["Anna-Lena","Tonima Afroze ","Carl-Erik"] -- should return ["AL","TA","CE"]
    print $ initials ["eLAK iNDATA","mer--- -- ---krånglig---- - -   -    -        indata","","-- -- - --  --- -- "] -- should return ["EI","MKI","",""]