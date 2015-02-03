cpfx :: [[Char]] -> [Char]
cpfx [] = ""
cpfx [x] = x
--cpfx (x:xs) = 

heads :: Int -> [[Char]] -> [[Char]]
heads 0 _ = []
heads _ [] = []
heads n (x:xs) = [(take n x)] ++ heads n xs

eqs :: [[Char]] -> Bool
eqs [] = True
eqs (x:xs) 
    | null xs = True
    | otherwise = x == head xs && eqs xs
