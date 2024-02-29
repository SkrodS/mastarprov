import Data.Char (toUpper)

initials :: [String] -> [String]
initials = map (map (toUpper . head) . words . concat . map replaceHyphenWithSpace)
    where replaceHyphenWithSpace '-' = " "
          replaceHyphenWithSpace c = [c]