main = do
  print [1, 3 .. 39]
  print $ filter odd [1 .. 40]
  print [x | x <- [1 .. 40], odd x]