-- Напишите функцию, берущую список списков и возвращающую список из N -х элементов подсписков с помощью функций map и (!!)

getByIndex :: [[a]] -> Int -> [a]
getByIndex xs n = map (!! n) xs

main = do
  print $ getByIndex [[0, 1, 2], [3, 4, 5], [6, 7, 8, 9, 10]] 2