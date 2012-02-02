
three :: [a] -> Int -> a
three a b = last (take b a)

three' a b = a !! (b-1)

three'' (x:_) 1 = x
three'' [] _ = error "Index out of bounds"
three'' (_:xs) k
 | k < 1     = error "Index out of bounds"
 | otherwise = three'' xs (k - 1)
