maquinaSomar :: [Int] -> [Int] 
maquinaSomar = somar 0
  where
    somar acc [] 
      | acc /= 0  = [acc]
      | otherwise = []
    somar acc (0:0:_) 
      | acc /= 0  = [acc]
      | otherwise = []
    somar acc (0:xs) 
      | acc /= 0  = acc : somar 0 xs
      | otherwise = somar 0 xs
    somar acc (x:xs) = somar (acc + x) xs

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])