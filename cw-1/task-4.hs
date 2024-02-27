import Data.List
import Data.Function

countWords :: String -> [(String, Int)]
countWords content = sortBy (flip compare `on` snd) $ map (\x -> (head x, length x)) $ group $ sort $ words content

writeWordCountPairs :: FilePath -> FilePath -> IO ()
writeWordCountPairs inputFile outputFile = do
    content <- readFile inputFile
    let wordCounts = countWords content
    writeFile outputFile (unlines [word ++ ":" ++ show count | (word, count) <- wordCounts])

main = do
    writeWordCountPairs "cw/input.txt" "cw/output.txt"