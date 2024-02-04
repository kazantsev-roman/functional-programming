-- Определите функцию myunion, которая находит объединение двух  списков.
-- Объединением двух списков будет список содержащий элементы, которые есть по крайней мере в одном из списков.

exclude :: Eq a => a -> [a] -> [a]
exclude _ [] = []
exclude x xs = filter (/= x) xs

unique :: Eq a => [a] -> [a]
unique [] = []
unique (x : xs) = x : unique (exclude x xs)

myunion :: Eq a => [a] -> [a] -> [a]
myunion [] ys = unique ys
myunion xs [] = xs
myunion (x : xs) ys = x : myunion (exclude x xs) (exclude x ys)

main = do
  print $ myunion "abcdefgggggggggg" "ejkasqwezxxxxxxxxxxxx"
