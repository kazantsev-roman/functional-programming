oddEven :: [a] -> [a]
oddEven [] = []
oddEven [x] = [x]
oddEven (x : y : xs) = y : x : oddEven xs

main = do
  print $ oddEven [2, 5, 3, 4]