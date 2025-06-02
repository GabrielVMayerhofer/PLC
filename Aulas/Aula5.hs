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