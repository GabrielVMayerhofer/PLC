isReplica :: String -> Int -> Char -> Bool
isReplica [] reps _ | reps == 0 = True
                    | otherwise = False
isReplica (a:as) reps letra | a == letra = isReplica as (reps-1) letra
                            | otherwise = False
                            
main = do
    a <- getLine
    b <- getLine
    c <- getChar
    let result = isReplica a (read b) c
    print result