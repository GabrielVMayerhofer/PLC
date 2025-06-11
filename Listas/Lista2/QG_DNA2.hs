data Animal = Cisnal | Iguanoide | Narvale | Null
  deriving (Eq, Show)

indice :: String -> String -> Float
indice [] _ = 0
indice _ [] = 0
indice firstE secondE = div (foldl (\acc (x,y) -> if x == y then acc + 1 else acc) 0 (zip firstE secondE)) (max (length firstE) (length secondE))

dna2 :: [String] -> [String] -> [Int]
dna2 _ [] = []
dna2 [] _ = []
dna2 (first:xs) (second:ys) = case indice first second of
  x >= 0.1 && x <= 0.3 -> Cisnal : indice xs ys
  x >= 0.4 && x <= 0.7 -> Iguanoide : indice xs ys
  x >= 0.8 -> Narvale : indice xs ys
  otherwise -> Null : indice xs ys

main = do
  firstExtract <- words <$> getLine                       -- equivalente a (read firstExtract :: [String])
  secondExtract <- words <$> getLine
  let result = dna2 firstExtract secondExtract
  print result