powerList :: Int -> Int -> [[Int]]
powerList m n = [[x^i | i <- [1..m]] | x <- [1..n]]

main = do
    print $ powerList 2 4