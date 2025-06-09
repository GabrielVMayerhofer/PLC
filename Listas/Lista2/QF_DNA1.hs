data Tree t = Node t (Tree t) (Tree t) | Nilt
  deriving (Read, Show)

transform :: Int -> Char
transform a = case mod a 5 of
  0 -> 'E'
  1 -> 'M'
  2 -> 'A'
  3 -> 'C'
  4 -> 'S'

inOrder :: Tree Int -> String
inOrder Nilt = []
inOrder (Node a t1 t2) = inOrder t1 ++ [transform a] ++ inOrder t2

dna1 :: Tree Int -> [String]
dna1 tree = divide 8 (inOrder tree)
  where
    divide _ [] = []
    divide n xs = take n xs : divide n (drop n xs)

main :: IO ()
main = do
  input <- getLine
  let result = dna1 (read input :: Tree Int)
  print result