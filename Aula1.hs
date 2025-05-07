answer :: Bool
answer = True

greater :: Int -> Int -> Bool
greater a b = a > b

--existe funcao 'max'
maxi :: Int -> Int -> Int
maxi a b  
  | a > b = a
  | otherwise = b

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