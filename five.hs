five :: [a] -> [a]
five [] = []
five (x:xs) = (five xs) ++ [x]

--five' = reverse
 
