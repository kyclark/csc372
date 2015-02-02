jin :: [Char] -> [[Char]] -> [Char]
jin _ [] = ""
jin s (x:xs) 
    | null xs = x
    | otherwise = x ++ s ++ jin s xs
