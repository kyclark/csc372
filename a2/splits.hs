splits :: [a] -> [([a], [a])]

splits [] = []
splits (x:xs) 
    | null xs = error "shortList"
    | otherwise = [([x], xs)]

