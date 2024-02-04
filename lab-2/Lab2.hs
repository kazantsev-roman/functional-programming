module Lab3
  (
    doMyList,
    oddEven,
    insert,
    listSumm,
    position,
    func5,
    func6,
  )
where

doMyList :: Int -> [Int]
doMyList k = take k [k ..]

oddEven :: [a] -> [a]
oddEven [] = []
oddEven [x] = [x]
oddEven (x : y : xs) = y : x : oddEven xs

insert :: [a] -> a -> Int -> [a]
insert xs x 0 = x : xs
insert (x : xs) y n = x : insert xs y (n - 1)

listSumm :: Num a => [a] -> [a] -> [a]
listSumm [] [] = []
listSumm xs [] = xs
listSumm [] xs = xs
listSumm (x : xs) (y : ys) = (x + y) : listSumm xs ys

position :: Eq a => [a] -> a -> Int
position [] _ = -1
position (x : xs) y = if x == y then 0 else 1 + position xs y

summ :: [Int] -> Int
summ [] = 0
summ (x : xs) = x + summ xs

func5 :: Int -> Int
func5 0 = 0
func5 a = summ [1 .. a]

func6 :: Int -> Int
func6 0 = 0
func6 a = summ $ [a - x | x <- [1 .. a]]