type Comando = String
type Valor = Int

sub :: Int -> Int -> Int
sub x y = x - y
mul :: Int -> Int -> Int
mul x y = x * y
add :: Int -> Int -> Int
add x y = x + y

executa :: [(Comando, Valor)] -> Int
executa = opera 0
  where opera acc [] = acc
        opera acc ((com,val):xs)
          | com == "Divide" && val == 0 = -666
          | com == "Soma" = opera (add acc val) xs
          | com == "Subtrai" = opera (sub acc val) xs
          | com == "Multiplica" = opera (mul acc val) xs
          | com == "Divide" = opera (div acc val) xs

main = do
    a <- getLine
    let result = executa (read a)
    print result