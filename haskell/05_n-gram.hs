import qualified Data.List as L

ngram :: Int -> [a] -> [[a]]
ngram n = filter ((>= n) . length) . map (take n) . L.tails

main = do
    n <- readLn :: IO Int
    s <- getLine
    print $ "Character n-gram: " ++ (show $ ngram n s)
    print $ "Word n-gram: " ++ (show . ngram n $ words s)
