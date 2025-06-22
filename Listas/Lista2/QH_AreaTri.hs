type Ponto = (Int, Int)
type Area = Double

data Triangulo = Triangulo Ponto Ponto Ponto
  deriving (Show, Eq, Read)

areaTriangulo :: Triangulo -> Area
areaTriangulo (Triangulo (x1,y1) (x2,y2) (x3,y3)) = 0.5 * abs (fromIntegral (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)))

main :: IO ()
main = do
  trg <- getLine
  let area = areaTriangulo (read trg :: Triangulo)
  print(area)