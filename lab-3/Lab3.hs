module Lab3
  ( listnums,
    secondLastList,
    myunion,
    mysubst,
    getByIndex,
  )
where

listnums :: Int -> [Int]
listnums n
    | n <= 0 = []
    | otherwise = n : listnums (n - 1)

secondlastlist :: [[a]] -> [a]
secondlastlist [] = []
secondlastlist (x : xs)
  | null x = secondlastlist xs
  | otherwise = last x : secondlastlist xs

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

mysubst :: Eq a => [a] -> [a] -> [a]
mysubst [] ys = []
mysubst (x : xs) ys
  | elem x ys = mysubst xs ys
  | otherwise = x : mysubst xs ys

getByIndex :: [[a]] -> Int -> [a]
getByIndex xs n = map (!! n) xs