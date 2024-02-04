-- Определите функцию secondlastlist.
-- Эта функция берет список списков и возвращает последние элементы каждого, объединенные  в список.

secondlastlist :: [[a]] -> [a]
secondlastlist [] = []
secondlastlist (x : xs)
  | null x = secondlastlist xs
  | otherwise = last x : secondlastlist xs

main = do
  print (secondlastlist [[1], [123, 234, 12], [2, 3], [], [777]])