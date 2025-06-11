--exercicios prova
import Data.Char

check0 :: [Int] -> Int -> Bool -> [Int]
check0 [] _ _ = []
check0 (x:xs) somador addCheck
  | x == 0 = check0 xs (somador+1) True
  | x /= 0 && addCheck == True = 0:somador:check0 (x:xs) 0 False
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