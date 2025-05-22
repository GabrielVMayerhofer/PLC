dividirStr :: String -> String -> [String]
dividirStr _ "" = []
dividirStr frase (letra:resto)
  | letra == ';' = frase : dividirStr "" resto
  | otherwise = dividirStr (frase ++ [letra]) resto

isDigitToDouble :: [String] -> [Double]
isDigitToDouble [] = []
isDigitToDouble (x:xs)
  | all (\c -> (c >= '0' && c <= '9') || c == '.') x = (read x :: Double) : isDigitToDouble xs
  | otherwise = isDigitToDouble xs

minMaxCartao :: String -> (Double, Double)
minMaxCartao str = case (isDigitToDouble (dividirStr "" str)) of
  [] -> (0, 0)
  osDoubles -> (minimum osDoubles, maximum osDoubles)

main = do
    a <- getLine
    let result = minMaxCartao a
    print result