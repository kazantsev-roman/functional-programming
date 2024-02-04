summ :: [Int] -> Int
summ [] = 0
summ (x : xs) = x + summ xs

func :: Int -> Int
func 0 = 0
func a = summ $ [a - x | x <- [1 .. a]]

main = do
  print $ func 4