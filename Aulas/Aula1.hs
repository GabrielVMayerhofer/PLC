answer :: Bool
answer = True

greater :: Int -> Int -> Bool
greater a b = a > b

--existe funcao 'max'
maxi :: Int -> Int -> Int
maxi a b  
  | a > b = a
  | otherwise = b

mini :: Int -> Int -> Int
mini a b  
  | a < b = a
  | otherwise = b

allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

vendas :: Int -> Int
vendas 0 = 200
vendas 1 = 400
vendas 2 = 300
vendas 3 = 1000
vendas _ = 0

totalVendas :: Int -> Int
totalVendas n
  | n == 0 = vendas 0
  | otherwise = vendas n + totalVendas (n - 1)

maxVendas :: Int -> Int
maxVendas n 
  | n == 0 = vendas 0
  | otherwise = maxi (vendas n) (maxVendas (n - 1))

myNot :: Bool -> Bool
myNot True = False
myNot False = True

myOr :: Bool -> Bool -> Bool
myOr True x = True
myOr False x = x

myAnd :: Bool -> Bool -> Bool
myAnd False x = False
myAnd True x = x

--definicoes
sqrSum :: Int -> Int -> Int
sqrSum a b  = sqrA + sqrB
  where 
    sqrA = a * a
    sqrB = b * b

sqrSum2 :: Int -> Int -> Int
sqrSum2 a b = sq a + sq b
  where 
    sq z = z * z

sqrSum3 :: Int -> Int -> Int
sqrSum3 a b = let sq z = z * z
               in sq a + sq b

--exercicios
maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs m n p = (mx, eqCount)
  where mx = maxiThree m n p
        eqCount = equalCount m n p mx

maxiThree :: Int -> Int -> Int -> Int        
maxiThree m n p = maxi (maxi n m) p 

equalCount :: Int -> Int -> Int -> Int -> Int
equalCount m n p mx
  | m == mx && n == mx && p == mx = 3
  | m == mx && n == mx || m == mx && n == mx || n == mx && p == mx = 2
  | otherwise = 1

--exercicio 2
primo :: Int -> Bool
primo n = dividindo (n-1)
        where dividindo 1 = True
              dividindo x | mod n x /= 0 = dividindo (x-1)
                          | otherwise = False

--exercicio 3
primoSi :: Int -> Int -> Bool
primoSi n m = dividindo (min n m)
            where dividindo 1 = True
                  dividindo x | mod n x == 0 && mod m x == 0 = False
                              | otherwise = dividindo(x-1)

--exercicio 4
fatorial :: Int -> Int
fatorial n | n == 0 = 1
           | otherwise = n * fatorial (n - 1)

--exercicio 5
all4Equal :: Int -> Int -> Int -> Int -> Bool
all4Equal a b c d = allEqual a b c && allEqual b c d