six :: (Eq a) => [a] -> Bool
six list = equal list (reverse list)
    where
        equal [] [] = True
        equal (x:xs) (a:as) = (x == a) && equal xs as


