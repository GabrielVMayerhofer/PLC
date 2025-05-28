isDigit :: Char -> Bool
isDigit ch = ch >= '0' && ch <= '9'

isEven x = x `mod` 2 == 0

doubleList xs = [2*a|a <- xs]
doubleIfEven xs = [2*a|a <- xs, isEven a]

sumPairs :: [(Int,Int)] -> [Int]
sumPairs lp = [a+b|(a,b) <- lp]

digits :: String -> String
digits st = [ch | ch <- st, isDigit ch]

maxFun :: (Int -> Int) -> Int -> Int
maxFun f 0 = f 0
maxFun f n = max (maxFun f (n-1)) (f n)

isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True
isCrescent f n = isCrescent f (n-1) && f (n-1) <= (f n)

doubleListMap xs = map (2*) xs
sqrListMap xs = map (^2) xs

sumSqrR = foldr (\x acc -> x^2 + acc) 0 [1,2,3]
sumSqrL = foldl (\acc x -> x^2 + acc) 0 [1,2,3]
-- foldl -> ((0 + 1²) + 2²) + 3² = 14
-- foldr -> 1² + (2² + (3² + 0)) = 14
-- ordem do acc e x importa para foldr e foldl

filtraPares listaInt = filter isEven listaInt
filtraDigits string1 = filter isDigit string1

--exercicio
type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa,Livro)]

baseExemplo :: BancoDados
baseExemplo = [("Sergio","O Senhor dos Aneis"),
               ("Andre","Duna"),
               ("Fernando","Jonathan Strange & Mr. Norrell"),    
               ("Fernando","Duna")
              ]

livros :: BancoDados -> Pessoa -> [Livro]
livros bd nome = map snd (filter isPessoa bd)
  where isPessoa (p,l) = (p == nome)

livros2 :: BancoDados -> Pessoa -> [Livro]
livros2 bd nome = [liv | (p,liv) <- bd, nome == p]
  
emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos bd liv = map fst (filter quemTem bd)
  where quemTem (p,l) = (l == liv)

emprestimos2 :: BancoDados -> Livro -> [Pessoa]
emprestimos2 bd liv = [pess | (pess,l) <- bd, l == liv]

emprestado :: BancoDados -> Livro -> Bool
emprestado bd liv = length (filter (\(p,l) -> l == liv) bd) > 0

emprestado2 :: BancoDados -> Livro -> Bool
emprestado2 bd liv = (emprestimos bd liv /= [])

qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos bd pessoa = foldl pegouLivro 0 bd
  where pegouLivro acc (p,l) | pessoa == p = acc + 1
                             | otherwise = acc

emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados
emprestar bd pess liv = (pess,liv) : bd

devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver bd pess liv = [(p,l) | (p,l) <- bd, (p,l) /= (pess,liv)]
