splits :: [a] -> [([a], [a])]
splits [_] = error "shortList"
splits xs = splits' xs 1
    where 
    splits' xs n
        | n >= length xs = []
        | otherwise = (take n xs, drop n xs) : splits' xs (n+1)
