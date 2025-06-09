import Data.Char

cifraCesar :: Int -> String -> String
cifraCesar _ [] = []
cifraCesar n (x:xs)
  | ord x >= 65 && ord x <= 90 = chr ((mod (ord x + n - 65) 26) + 97) : cifraCesar n xs
  | ord x >= 97 && ord x <= 122 = chr ((mod (ord x + n - 97) 26) + 97) : cifraCesar n xs
  | otherwise = x : cifraCesar n xs