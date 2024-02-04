main = do
  print $ take 50 [div (n * (n + 1)) 2 | n <- [1 ..]]