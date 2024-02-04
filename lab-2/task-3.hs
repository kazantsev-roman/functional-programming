listSumm :: Num a => [a] -> [a] -> [a]
listSumm [] [] = []
listSumm xs [] = xs
listSumm [] xs = xs
listSumm (x : xs) (y : ys) = (x + y) : listSumm xs ys

main = do
  print $ listSumm [] [2, 4, 5]