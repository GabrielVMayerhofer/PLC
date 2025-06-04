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
logMes mes fatura = foldl (\acc (m, p) -> if m == mes then acc + p else acc) 0 (matchMesPrice (separarMesPrice (dividirStr "" fatura)))

-- teste usando composicao de funcoes
logMes2 :: String -> String -> Double
logMes2 mes fatura = (foldl (\acc (m,p) -> if m == mes then acc + p else acc) 0 . matchMesPrice . separarMesPrice . dividirStr "") fatura

main = do
    a <- getLine
    b <- getLine
    let result = logMes a b
    print result

--JAN = 89.4; FEV = 15.44; MAR = 73.89; ABR = 23.5