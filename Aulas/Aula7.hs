--resolucao prova 2024.2
--Q1
insert :: Int -> [Int] -> [Int]
insert a [] = [a]
insert a (x:xs) 
  | a >= x = x : insert a xs
  | a < x = a : x : xs

--Q2
ehPrimo :: Int -> Bool
ehPrimo x = dividindo (x-1) 
            where dividindo 1 = True
                  dividindo n | mod x n == 0 = False
                              | otherwise = dividindo (n-1)

--Q3
sumPrimeSqr :: Int -> Int -> Int
sumPrimeSqr a b = (foldl1 (+) . map (^2) . filter ehPrimo) [a..b]

--Q4
sumLambda :: Int -> Int -> Int
sumLambda a b = foldl (\acc x -> if ehPrimo x then acc + x^2 else acc) 0 [a..b]

--Q5
sumLS :: Int -> Int -> Int
sumLS a b = (foldl1 (+) . map (^2)) [x | x <- [a..b], ehPrimo x]

--Q6
data Tree = No Int Tree Tree | Folha Int 
  deriving (Show)

maxTree :: Tree -> Int
maxTree (Folha a) = a
maxTree (No a t1 t2) = max a (max (maxTree t1) (maxTree t2)) 

minTree :: Tree -> Int
minTree (Folha a) = a
minTree (No a t1 t2) = min a (min (minTree t1) (minTree t2))

ordenada :: Tree -> Bool
ordenada (Folha a) = True
ordenada (No a t1 t2)
  | a > maxTree t1 && a < minTree t2 = ordenada t1 && ordenada t2
  | otherwise = False

teste1 = No 50 (No 25 (No 12 (Folha 6) (Folha 13))
               (No 30 (Folha 26) (Folha 32)))
               (Folha 59)
               
teste2 = No 100 teste1
                (No 200 (Folha 99) -- 99 é menor que 100, que está acim
                        (No 298 (Folha 297) (Folha 299)))

-- teste1 = True
-- teste2 = False