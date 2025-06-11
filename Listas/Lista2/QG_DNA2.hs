data Animal = Cisnal | Iguanoide | Narvale | Null
  deriving (Eq, Show)

trasformar :: [Animal] -> [Int]
transformar [] = []
transformar xs = foldr (\x accC accI accN -> case xs of Cisnal -> accC + 1
                                                        Iguanoide -> accI + 1
                                                        Narvale -> accN + 1
                                                        _ -> ) (0,0,0) xs

contar :: Float -> [Animal]
contar indicador = case indicador of
  indicador >= 0.1 && indicador <= 0.3 -> [Cisnal] 
  indicador >= 0.4 && indicador <= 0.7 -> [Iguanoide] 
  indicador >= 0.8 -> [Narvale] 
  otherwise -> [Null] 

indice :: String -> String -> Float
indice [] _ = 0
indice _ [] = 0
indice firstE secondE = div (foldl (\acc (indicador,y) -> if indicador == y then acc + 1 else acc) 0 (zip firstE secondE)) (max (length firstE) (length secondE))

dna2 :: [String] -> [String] -> [Int]
dna2 _ [] = []
dna2 [] _ = []
dna2 xs ys = 

main = do
  firstExtract <- words <$> getLine                       -- equivalente a (read firstExtract :: [String])
  secondExtract <- words <$> getLine
  let result = dna2 firstExtract secondExtract
  print result