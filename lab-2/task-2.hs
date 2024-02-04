insert :: [a] -> a -> Int -> [a]
insert xs x 0 = x : xs
insert (x : xs) y n = x : insert xs y (n - 1)

main = do
  print $ insert [1, 2, 3] 4 2