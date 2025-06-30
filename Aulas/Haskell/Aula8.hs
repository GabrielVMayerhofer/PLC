--exercicios prova
import Data.Char

check0 :: [Int] -> Int -> Bool -> [Int]
check0 [] _ _ = []
check0 (x:xs) somador addCheck
  | x == 0 = check0 xs (somador+1) True
  | x /= 0 && addCheck == True = 0 : somador : check0 (x:xs) 0 False
  | otherwise = x : check0 xs 0 False

rlencode0 :: [Int] -> [Int]
rlencode0 [] = []
rlencode0 lista = check0 lista 0 False

decrementador :: Int -> [Int]
decrementador 0 = []
decrementador x = 0 : decrementador (x-1)

rldecode0 :: [Int] -> [Int]
rldecode0 [] = []
rldecode0 (0:y:xs) = decrementador y ++ rldecode0 xs
rldecode0 (x:xs) = x : rldecode0 xs

checkL :: String -> Int -> Bool -> String
checkL [] _ _ = []
checkL (x:[]) somador addCheck
  | addCheck == True = x : chr (somador+49) : []
  | otherwise = x : []
checkL (x:y:xs) somador addCheck
  | x == y = checkL (y:xs) (somador+1) True
  | x /= y && addCheck == True = x : chr (somador+49) : checkL (y:xs) 0 False
  | otherwise = x : checkL (y:xs) 0 False

rlencodeLetras :: String -> String
rlencodeLetras [] = []
rlencodeLetras lista = checkL lista 0 False

reletrar :: Char -> Int -> String
reletrar letra 0 = []
reletrar letra vezes = letra : reletrar letra (vezes-1) 

rldecodeLetras :: String -> String
rldecodeLetras [] = []
rldecodeLetras (y:[]) = [y]
rldecodeLetras (x:y:xs)
  | ord y >= 50 && ord y <= 57 = reletrar x ((ord y) - 48) ++ rldecodeLetras xs
  | otherwise = x : rldecodeLetras (y:xs)

data Letra = Unica Char | Repetida Char Int
  deriving Show

checkLCodigo :: String -> Int -> Bool -> [Letra]
checkLCodigo [] _ _ = []
checkLCodigo (x:[]) somador addCheck
  | addCheck == True = Repetida x (somador+1) : []
  | otherwise = Unica x : []
checkLCodigo (x:y:xs) somador addCheck
  | x == y = checkLCodigo (y:xs) (somador+1) True
  | x /= y && addCheck == True = Repetida x (somador+1) : checkLCodigo (y:xs) 0 False
  | otherwise = Unica x : checkLCodigo (y:xs) 0 False

rlencodeLetrasCodigo :: String -> [Letra]
rlencodeLetrasCodigo [] = []
rlencodeLetrasCodigo lista = checkLCodigo lista 0 False

rldecodeLetrasCodigo :: [Letra] -> String
rldecodeLetrasCodigo [] = []
rldecodeLetrasCodigo (x:xs) = case x of
  Unica letra -> [letra] ++ rldecodeLetrasCodigo xs
  Repetida letra vezes -> reletrar letra vezes ++ rldecodeLetrasCodigo xs

--mais exercicios
fibonacci :: [Int]
fibonacci = somaFibo 0 1
  where somaFibo a b = a : somaFibo b (a+b)

merge :: Ord t => [t] -> [t] -> [t]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) 
  | y < x = y : merge (x:xs) ys
  | otherwise = x : merge xs (y:ys)

type Pilha t = [t]
data Elemento = Valor Int | Soma | Multiplica
  deriving (Show)

exemploPilhaElem :: Pilha Elemento
exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica]
-- exemplo de uso: gera_string exemploPilhaElem ——> "((10+20)*30)"

gera_string :: Pilha Elemento -> String
gera_string [] = []
gera_string (x:y:xs) = case (x,y) of
    (Valor n, Soma) -> "+" ++ show n ++ ")" ++ gera_string xs
    (Valor n, Multiplica) -> "*" ++ show n ++ ")" ++ gera_string xs
    (Valor n, Valor z) -> "(" ++ show n ++ gera_string (y:xs)

-- exemplo de uso: calcula exemploPilhaElem ——> 900
calcula :: Pilha Elemento -> Int
calcula [Valor x] = x
calcula (x:y:z:xs) = case (x,y,z) of
  (Valor a, Valor b, Soma) -> calcula ([Valor (a+b)] ++ xs)
  (Valor a, Valor b, Multiplica) -> calcula ([Valor (a*b)] ++ xs)