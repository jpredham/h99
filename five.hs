five :: [a] -> [a]
five [] = []
five (x:xs) = (five xs) ++ [x]

five' list = five'' list []
      where 
            five'' [] reversed  = reversed
            five'' (x:xs) reversed = five'' xs (x:reversed)
            
 
