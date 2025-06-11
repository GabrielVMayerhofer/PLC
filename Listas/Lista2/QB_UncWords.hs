import Data.Char (toLower)

ordenar :: String -> [String] -> [String]
ordenar x [] = [x]
ordenar x (y:ys)
  | x <= y = x : y : ys
  | otherwise = y : ordenar x ys

alfabetizar :: [String] -> [String]
alfabetizar [] = []
alfabetizar (x:xs) = ordenar x (alfabetizar xs)

eqFinder :: ([String], [String]) -> [String]
eqFinder (xs,ys) = filter (\y -> notElem y xs && length (filter (==y) ys) == 1) ys ++ filter (\x -> notElem x ys && length (filter (==x) xs) == 1) xs

uncommonFromTwoSentences :: String -> String -> [String]
uncommonFromTwoSentences s1 s2 = alfabetizar (eqFinder (((words . map toLower) s1, (words . map toLower) s2)))

main = do
sentence_1 <- getLine
sentence_2 <- getLine
let result = uncommonFromTwoSentences sentence_1 sentence_2
print result