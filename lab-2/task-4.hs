position :: Eq a => [a] -> a -> Int
position [] _ = -1
position (x : xs) y = if x == y then 0 else 1 + position xs y

main = do
  print $ position [1,2,3] 3