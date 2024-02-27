getList :: Int -> Int -> Int -> [Int]
getList start n mul = take n [start, start + mul ..]

main = do
    putStrLn "Введите начальное значение:"
    start <- getLine
    putStrLn "Введите количество элементов:"
    n <- getLine
    putStrLn "Введите кратность:"
    mul <- getLine
    let result = getList (read start :: Int) (read n :: Int) (read mul :: Int)
    putStrLn $ "Сформированный список: " ++ show result