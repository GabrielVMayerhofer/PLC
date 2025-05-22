dividirStr :: String -> String -> [String]
dividirStr _ "" = []
dividirStr frase (letra:resto)
  | letra == ';' = frase : dividirStr "" resto
  | otherwise = dividirStr (frase ++ [letra]) resto

isDigitToDoube :: [String] -> [Double]
isDigitToDoube [] = []
isDigitToDoube (x:xs)
  | all (\c -> (c >= '0' && c <= '9') || c == '.') x = (read x :: Double) : isDigitToDoube xs
  | otherwise = isDigitToDoube xs

minMaxCartao :: String -> (Double, Double)
minMaxCartao str = case (isDigitToDoube (dividirStr "" str)) of
  [] -> (0, 0)
  osDoubles -> (minimum osDoubles, maximum osDoubles)

main = do
    a <- getLine
    let result = minMaxCartao a
    print result