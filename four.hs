four :: [a] -> Int
four = length

four' [] = 0
four' (_:xs) = 1 + (four' xs)
