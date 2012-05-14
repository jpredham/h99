import Data.List

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- group xs]

encode' []     = []
encode' (x:xs) = bunch 1 x xs where
    bunch n x [] = [(n, x)]
    bunch n x (y:ys)
        | x == y    = bunch (n + 1) x ys
        | otherwise = (n, x) : bunch 1 y ys
