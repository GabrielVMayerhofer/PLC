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