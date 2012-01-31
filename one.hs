
one :: [a] -> a
one [x] = x
one (_:x) = one x
