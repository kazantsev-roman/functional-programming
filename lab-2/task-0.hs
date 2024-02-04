doMyList :: Int -> [Int]
doMyList k = take k [k ..]

main = do
  print $ doMyList 5