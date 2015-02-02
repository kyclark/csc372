cpfx :: [[Char]] -> [Char]
cpfx [] = ""
cpfx [x] = x

heads :: [[Char]] -> [Char]
heads [] = []
heads (x:xs) = head x : heads xs 

eqs :: [Char] -> Bool
eqs "" = True
eqs (x:xs) 
    | null xs = True
    | otherwise = x == head xs && eqs xs
