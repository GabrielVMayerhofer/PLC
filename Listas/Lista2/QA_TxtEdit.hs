data Cmd = Cursor Int | Backspace Int | Delete Int | Insert String
           deriving (Read)

moveCursor :: (String,String) -> Int -> (String,String)
moveCursor (left,right) n 
  | n > 0 = (left ++ take n right, drop n right)
  | n < 0 = (take (length left + n) left, drop (length left + n) left ++ right)
  | otherwise = (left,right)

backspaceChars :: (String,String) -> Int -> (String,String)
backspaceChars (left,right) n = (take (length left - n) left, right)

deleteChars :: (String,String) -> Int -> (String,String)
deleteChars (left,right) n = (left, drop n right)

insertStr :: (String,String) -> String -> (String,String)
insertStr (left,right) insertedStr = (left, insertedStr ++ right)

editTextAux :: (String,String) -> [Cmd] -> (String,String)
editTextAux str [] = str
editTextAux str (next:cs) = editTextAux returnStr cs
  where
    returnStr = case next of
      Cursor n -> moveCursor str n
      Backspace n -> backspaceChars str n
      Delete n -> deleteChars str n 
      Insert strNew -> insertStr str strNew


editText :: String -> [Cmd] -> String
editText str cmds = left ++ right
  where (left,right) = editTextAux ([],str) cmds

main = do
       a <- getLine
       b <- getLine
       let result = editText a (read b)
       print result