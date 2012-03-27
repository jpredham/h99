data NestedList a = Elem a | List [NestedList a]

seven :: NestedList a -> [a]
seven (Elem a) = [a]
seven (List (x:xs)) = seven x ++ seven (List xs)
seven (List []) = []

seven' a = flatten a []
       where flatten (Elem x) xs      = x:xs
             flatten (List (x:ls)) xs = flatten x (flatten (List ls) xs)
             flatten (List []) xs     = xs
 
