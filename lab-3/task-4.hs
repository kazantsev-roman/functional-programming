-- Определите функцию mysubst. Получив два списка, она возвращает их разность.
-- Разность двух списков называется список, состоящий из элементов  первого списка, которые не принадлежат второму списку.

mysubst :: Eq a => [a] -> [a] -> [a]
mysubst [] ys = []
mysubst (x : xs) ys
  | elem x ys = mysubst xs ys
  | otherwise = x : mysubst xs ys

main = do
  print $ mysubst "abc" "dce"