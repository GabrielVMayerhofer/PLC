intP :: (Int, Int)
intP = (33, 44)

addPair :: (Int, Int) -> Int
addPair (x, y) = x+y

shift :: ((Int, Int), Int) -> (Int, (Int, Int))
shift ((x, y), z) = (x, (y, z))

type Name = String
type Age = Int
type Phone = Int
type Person = (Name, Age, Phone)

--retorna o nome da tupla Person
name :: Person -> Name
name (n, a, p) = n

--exemplo uso de tuplas
oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c = -b/(2.0*a)

twoRoots :: Float -> Float -> Float -> (Float, Float)
twoRoots a b c = (d-e, d+e)
  where d = -b/(2.0*a)
        e = sqrt(b^2-4.0*a*c)/(2.0*a)

roots :: Float -> Float -> Float -> String
roots a b c | b^2 == 4.0*a*c = show (oneRoot a b c)
            | b^2 > 4.0*a*c = show f ++ " " ++ show s
            | otherwise = "no roots"
            where (f,s) = twoRoots a b c

--listas
{-
[1,2,3,4] :: [Int]
[5] é o mesmo que 5:[]
[4,5] é o mesmo que 4:(5:[])

-}

--exercicios
sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as

double :: [Int] -> [Int]
double [] = []
double (a:as) = (2*a):(double as)

member :: [Int] -> Int -> Bool
member [] b = False
member (a:as) b | b == a = True
                | otherwise = member as b

digits :: String -> String
digits [] = []
digits (a:as) | a >= '0' && a <= '9' = a:(digits as)
              | otherwise = digits as

sumPairs :: [(Int,Int)] -> [Int]
sumPairs [] = []
sumPairs ((a,b):as) = (a+b):sumPairs as