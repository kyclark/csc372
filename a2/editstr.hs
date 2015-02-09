editstr :: [([Char], [Char], [Char])] -> [Char] -> [Char]
editstr [] _ = []
editstr [(op, from, to):xs] string = case op of
        "rep" -> rep from to string


rep :: [Char] -> [Char] -> [Char] -> [Char]
rep [] _ s = s
rep _ [] s = s
rep [from] to s = rep' from to s []
    where rep' from to (x:xs) acc 
        | from == x = acc ++ to ++ rest
        | otherwise = acc ++ x ++ rest
        where rest = rep' from to xs acc
