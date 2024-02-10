-- xs возвращает элементы xs в обратном порядке. xs должно быть конечным.

myReverse :: [a] -> [a]
-- По окончании рекурсии возвратим пустой список
myReverse [] = []
-- рекурсивно разворачиваем список, ставя в конец элементы, которые были в начале
myReverse (x:xs) = myReverse xs ++ [x]

main = do
    print $ myReverse [1, 2, 3, 4, 5]