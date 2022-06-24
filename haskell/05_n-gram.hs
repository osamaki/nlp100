import qualified Data.List as L

ngram :: Int -> [a] -> [[a]]
ngram n = filter ((>= n) . length) . map (take n) . L.tails
