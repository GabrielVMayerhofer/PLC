type Comando = String
type Valor = Int

executa :: [(Comando, Valor)] -> Int
executa [] = 0