main = do
  print $ take 50 [div (n * (n + 1) * (n + 2)) 6 | n <- [1 ..]]