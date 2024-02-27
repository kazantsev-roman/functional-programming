partitionN :: [a] -> Int -> [[a]]
partitionN xs n
    | n <= 0 = error "Number of partitions must be greater than 0"
    | otherwise = splitList xs n

splitList :: [a] -> Int -> [[a]]
splitList xs n = partitionHelper xs (length xs `div` n) (length xs `mod` n) n

partitionHelper :: [a] -> Int -> Int -> Int -> [[a]]
partitionHelper _ _ _ 0 = []
partitionHelper xs avgSize additional n
    | additional > 0 = take (avgSize + 1) xs : partitionHelper (drop (avgSize + 1) xs) avgSize (additional - 1) (n - 1)
    | otherwise = take avgSize xs : partitionHelper (drop avgSize xs) avgSize additional (n - 1)

main = do
  print $ partitionN [1,2,3,4,5,6,7] 3