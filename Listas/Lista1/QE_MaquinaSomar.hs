maquinaSomar :: [Int] -> [Int]
maquinaSomar = somador 0 False
  where
    somador acc started [] 
      | started = [acc]
      | otherwise = []
    somador acc started (0:0:_) 
      | started = [acc]
      | otherwise = []
    somador acc started (0:xs)
      | started = acc : somador 0 False xs
      | otherwise = somador 0 False xs
    somador acc started (x:xs) = somador (acc + x) True xs

-- maquinaSomar xs = somar 0 xs
--   where
--     somar acc [] 
--       | acc /= 0  = [acc]
--       | otherwise = []
--     somar acc (0:0:_) 
--       | acc /= 0  = [acc]
--       | otherwise = []
--     somar acc (0:xs) 
--       | acc /= 0  = acc : somar 0 xs
--       | otherwise = somar 0 xs
--     somar acc (x:xs) = somar (acc + x) xs

main = do
       lista <- getLine
       print $ maquinaSomar (read lista :: [Int])

-- input: [1,2,3,0,2,3]
-- output seria [6,5]

-- input [1,2,3]
-- output seria [6]

-- input [1,2,0]
-- output seria [3]

-- input [0,2,3]
-- output seria [5]

-- input [0,1,2,3,0,2,3]
-- output seria [6,5]