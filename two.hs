
two :: [a] -> a
two [] = error "There is no second to last element"
two [x] = error "There is no second to last element"
two [x,_] = x
two (_:xs) = two xs

two' = last . init
