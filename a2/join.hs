join :: [Char] -> [[Char]] -> [Char]
join _ [] = ""
join s (x:xs) 
    | null xs = x
    | otherwise = x ++ s ++ join s xs
