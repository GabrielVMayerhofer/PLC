data Tree t = Nilt | Node t (Tree t) (Tree t)
              deriving (Read)

maxTree :: Tree Int -> Int
maxTree Nilt = minBound
maxTree (Node a t1 t2) = max a (max (maxTree t1) (maxTree t2)) 

minTree :: Tree Int -> Int
minTree Nilt = maxBound
minTree (Node a t1 t2) = min a (min (minTree t1) (minTree t2))

isBST :: Tree Int -> Bool
isBST Nilt = True
isBST (Node a t1 t2) = a > maxTree t1 && a < minTree t2 && isBST t1 && isBST t2

main = do
       s <- getLine
       let result = isBST (read s::Tree Int)
       print result