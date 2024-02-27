elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices x = findIndices (==x)

findIndices :: (a -> Bool) -> [a] -> [Int]
findIndices p xs = findIndices' p xs 0

findIndices' :: (a -> Bool) -> [a] -> Int -> [Int]
findIndices' _ [] _ = []
findIndices' p (x : xs) n
    | p x = n : findIndices' p xs (n + 1)
    | otherwise = findIndices' p xs (n + 1)

main = do
    print $ elemIndices 3 [1, 3, 2, 3, 4, 2]