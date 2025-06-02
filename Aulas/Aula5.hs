-- composicao
sucessor :: Int -> Int
sucessor x = x + 1
-- (\x -> x + 1) 

sucessor2 :: Int -> Int
sucessor2 = succ . succ

dobra :: Int -> Int
dobra x = 2 * x

iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f).f

-- x + y = (\x -> \y -> x + y)

-- exercicio
primo :: Int -> Bool
primo n = dividindo (n-1)
  where dividindo 1 = True
        dividindo x | mod n x /= 0 = dividindo (x-1)
                    | otherwise = False

sumPrimeSqr :: Int -> Int -> Int
sumPrimeSqr a b = foldl1 (+) (map (^2) (filter primo [a..b]))
