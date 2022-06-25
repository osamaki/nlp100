import qualified Data.List as L

ngram :: Int -> [a] -> [[a]]
ngram n = filter ((>= n) . length) . map (take n) . L.tails

bigram :: [a] -> [[a]]
bigram = ngram 2

main = do
    s <- getLine
    print $ "Character bi-gram: " ++ (show $ bigram s)
    print $ "Word bi-gram: " ++ (show . bigram $ words s)
