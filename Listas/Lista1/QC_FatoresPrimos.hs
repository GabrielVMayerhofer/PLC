fatPrime :: Int -> [(Int, Int)]
fatPrime 0 = []
fatPrime n = fatora n 2 0
  where
    fatora 1 _ 0 = []
    fatora 1 x acc = [(x, acc)]
    fatora n x acc | mod n x == 0 =  fatora (div n x) x (acc + 1)
                   | acc == 0 = fatora n (x+1) 0
                   | otherwise = (x, acc) : fatora n (x + 1) 0

main = do
      a <- getLine
      let result = fatPrime (read a :: Int)
      print result