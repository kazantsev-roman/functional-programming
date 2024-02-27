import System.Environment
import Data.Char

-- Функция для замены всех знаков пунктуации в строке заданным символом
replacePunctuation :: Char -> String -> String
replacePunctuation char = map (\c -> if isPunctuation c then char else c)

-- Функция для копирования информации из одного файла в другой с заменой знаков пунктуации
copyFileWithReplacement :: FilePath -> FilePath -> Char -> IO ()
copyFileWithReplacement source dest char = do
    content <- readFile source
    let replacedContent = replacePunctuation char content
    writeFile dest replacedContent

main = do
    args <- getArgs
    case args of
        [source, dest] -> do
            putStrLn "Введите символ для замены знаков пунктуации:"
            replacementChar <- getLine
            copyFileWithReplacement source dest (head replacementChar)
            putStrLn $ "Информация скопирована из файла " ++ source ++ " в файл " ++ dest ++ " с заменой знаков пунктуации на \"" ++ [head replacementChar] ++ "\"."
        _ -> putStrLn "Использование: ./программа <исходный_файл> <целевой_файл>"