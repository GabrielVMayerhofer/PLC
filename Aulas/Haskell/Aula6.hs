-- Tipos Algebricos
-- Ex: data Bool = True | False

data Estacao = Inverno | Outono | Verao | Primavera
  deriving (Show)
data Temp = Frio | Quente
  deriving (Show)

clima :: Estacao -> Temp
clima Inverno = Frio
clima _ = Quente

type Nome = String
type Idade = Int
data Pessoas = Pessoa Nome Idade

listaPessoa :: [Pessoas]
listaPessoa = [Pessoa "Joao" 30, Pessoa "Maria" 25]

showPessoa :: Pessoas -> String
showPessoa (Pessoa n i) = n ++ " -- " ++ show i


data Shape = Circle Float | Rectangle Float Float | Square Float

-- Circle 4.9 :: Shape
-- Rectangle 4.2 2.0 :: Shape

isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Rectangle _ _) = False
isRound (Square _) = False

area :: Shape -> Float
area (Circle c) = c ^ 2 * pi
area (Rectangle b a) = b * a
area (Square l) = l ^ 2
-- tem que ser com casamento de padroes, nao if (sh | sh = Circle c) <- errado


data Expr = Lit Int | Add Expr Expr | Sub Expr Expr

eval :: Expr -> Int
eval (Lit n) = n
eval (Add e1 e2) = (eval e1) + (eval e2)
eval (Sub e1 e2) = (eval e1) - (eval e2)

showExpr :: Expr -> String
showExpr (Lit n) = show n
showExpr (Add e1 e2) = "(" ++ (showExpr e1) ++ "+" ++ (showExpr e2) ++ ")"
showExpr (Sub e1 e2) = "(" ++ (showExpr e1) ++ "-" ++ (showExpr e2) ++ ")"


data Pairs t = Pair t t
-- Pair 6 8 :: Pairs Int
-- Pair True True :: Pairs Bool
-- Pair [] [1,3] :: Pair [Int]

data List t = Nil | Cons t (List t)
  deriving(Show)
data Tree t = NilT | Node t (Tree t) (Tree t)
  deriving (Show)

-- exercicio
toList :: List t -> [t]
toList (Nil) = []
toList (Cons x xs) = x : toList xs

fromList :: [t] -> List t
fromList [] = Nil
fromList (x:xs) = Cons x (fromList xs)

depth :: Tree t -> Int
depth (NilT) = 0
depth (Node a t1 t2) = 1 + max (depth t1) (depth t2)

collapse :: Tree t -> [t]
collapse (NilT) = []
collapse (Node a t1 t2) = [a] ++ collapse t1 ++ collapse t2 

mapTree :: (t -> u) -> Tree t -> Tree u
mapTree f NilT = NilT
mapTree f (Node a t1 t2) = Node (f a) (mapTree f t1) (mapTree f t2)