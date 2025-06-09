data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show, Read)

data Directions = North | South | East | West

destination :: (Int,Int) -> [Command] -> (Int,Int)
destination pos (x:xs) = calcPos pos (x:xs) North

calcPos :: (Int,Int) -> [Command] -> Directions -> (Int,Int)
calcPos (x,y) [] _ = (x,y)
calcPos (x,y) (next:xs) dir = case next of
  Forward n -> case dir of
    North -> calcPos (x, y + n) xs North
    South -> calcPos (x, y - n) xs South
    East  -> calcPos (x + n, y) xs East
    West  -> calcPos (x - n, y) xs West
  Backward n -> case dir of
    North -> calcPos (x, y - n) xs North
    South -> calcPos (x, y + n) xs South
    East  -> calcPos (x - n, y) xs East
    West  -> calcPos (x + n, y) xs West
  TurnLeft -> case dir of
    North -> calcPos (x,y) xs West
    West -> calcPos (x,y) xs South
    South -> calcPos (x,y) xs East
    East -> calcPos (x,y) xs North 
  TurnRight -> case dir of
    North -> calcPos (x,y) xs East
    East -> calcPos (x,y) xs South
    South -> calcPos (x,y) xs West
    West -> calcPos (x,y) xs North

main = do
       a <- getLine
       b <- getLine
       let result = destination (read a) (read b)
       print result