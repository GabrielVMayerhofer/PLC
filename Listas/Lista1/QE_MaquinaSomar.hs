maquinaSomar :: [Int] -> [Int]
maquinaSomar [] = []
maquinaSomar [x] = []
maquinaSomar (x:y:xs) = somador 0 (x:y:xs)
  where
    somador acc [] = []
    somador acc [x]
      | x == 0    = [acc | acc /= 0]
      | otherwise = []
    somador acc (x:y:xs)
      | x == 0 && y == 0 = [acc | acc /= 0]
      | x == 0           = [acc | acc /= 0] ++ somador 0 (y:xs)
      | otherwise        = somador (acc + x) (y:xs)


main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])