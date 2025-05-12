-- referencia para vendas tabeladas
vendas :: Int -> Int
vendas 0 = 200
vendas 1 = 400
vendas 2 = 300
vendas 3 = 1000
vendas _ = 0

-- ++ :: String -> String -> String
-- show :: Int -> String

--exercicio
addEspacos :: Int -> String
addEspacos n | n == 0 = ""
             | otherwise = addEspacos (n-1) ++ " "

paraDireita :: Int -> String -> String
paraDireita n texto | n == 0 = ""
                    | otherwise = texto ++ addEspacos(n)

--exercicio
printaCabecalho :: String
printaCabecalho = "Semana" ++ addEspacos(3) ++ "Vendas\n"

printaVendas :: Int -> String
printaVendas n = mostraOrdem 0
                 where mostraOrdem x | x == n = show(x) ++ addEspacos 3 ++ show(vendas x) ++ "\n"
                                     | otherwise = show(x) ++ addEspacos 3 ++ show(vendas x) ++ "\n" ++ mostraOrdem(x+1)

printaTotal :: Int -> Int
printaTotal n | n == 0 = vendas 0
              | otherwise = vendas n + printaTotal(n-1)

printaMedia :: Int -> Float
printaMedia n = fromIntegral(printaTotal n) / fromIntegral (n+1) 

vendasTabeladas :: Int -> IO()
vendasTabeladas n = putStr(printaCabecalho ++ 
                    printaVendas n ++
                    "Total: " ++ show(printaTotal n) ++ "\n" ++
                    "Media: " ++ show(printaMedia n) ++ "\n")
