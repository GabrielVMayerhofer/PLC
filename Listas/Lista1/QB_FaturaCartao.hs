dividirStr :: String -> String -> [String]
dividirStr _ "" = []
dividirStr frase (letra:resto)
  | letra == ';' = frase : dividirStr "" resto
  | otherwise = dividirStr (frase ++ [letra]) resto

separarMesPrice :: [String] -> [String]
separarMesPrice [] = []
separarMesPrice (x:xs)
  | any (\c -> c == ' ') x = x : separarMesPrice xs 
  | all (\c -> (c >= '0' && c <= '9') || c == '.') x = x : separarMesPrice xs
  | otherwise = separarMesPrice xs

matchMesPrice :: [String] -> [(String, Double)]
matchMesPrice [] = []
matchMesPrice [a] = []
matchMesPrice (x:y:xs) = (((words x) !! 1), (read y :: Double)) : matchMesPrice xs

logMes :: String -> String -> Double
logMes mes fatura = formatar (somador (matchMesPrice (separarMesPrice (dividirStr "" fatura))) mes)
  where
    somador [] _ = 0
    somador ((m, p):xs) mes
      | m == mes = p + somador xs mes
      | otherwise = somador xs mes
    formatar x = fromIntegral (round (x * 100)) / 100

main = do
    a <- getLine
    b <- getLine
    let result = logMes a b
    print result