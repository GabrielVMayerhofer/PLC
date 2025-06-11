data Animal = Cisnal | Iguanoide | Narvale | Null
  deriving (Eq, Show)

transformar :: [Animal] -> [Int]
transformar [] = [0,0,0]
transformar xs = [c,i,n]
  where (c,i,n) = foldl (\(accC,accI,accN) x -> case x of 
                    Cisnal -> (accC+1, accI, accN)
                    Iguanoide -> (accC, accI+1, accN)
                    Narvale -> (accC, accI, accN+1)
                    _ -> (accC, accI, accN)
                  ) (0,0,0) xs

contar :: [Float] -> [Animal]
contar [] = []
contar (indicador : xs)
  | indicador >= 0.1 && indicador <= 0.3 = Cisnal : contar xs 
  | indicador >= 0.4 && indicador <= 0.7 = Iguanoide : contar xs
  | indicador >= 0.8 = Narvale : contar xs
  | otherwise = Null : contar xs

contadorStr :: String -> String -> Int
contadorStr _ [] = 0
contadorStr [] _ = 0
contadorStr (x:xs) (y:ys)
  | x == y = 1 + contadorStr xs ys
  | otherwise = contadorStr xs ys

indice :: [String] -> [String] -> [Float]
indice [] _ = []
indice _ [] = []
indice firstE secondE = [fromIntegral (contadorStr a b) / fromIntegral (max (length a) (length b)) | (a,b) <- zip firstE secondE]

dna2 :: [String] -> [String] -> [Int]
dna2 str1 str2 = transformar (contar (indice str1 str2))

--compara -> enlista animais -> conta

main = do
  firstExtract <- words <$> getLine                       -- equivalente a (read firstExtract :: [String])
  secondExtract <- words <$> getLine
  let result = dna2 firstExtract secondExtract
  print result