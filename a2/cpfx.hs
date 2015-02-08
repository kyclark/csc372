{-
cpfx :: [[Char]] -> [Char]
cpfx [] = ""
cpfx [x] = x
cpfx all@(x:xs) = 
    t bits all
    where bits = splits x
-}

heads :: Int -> [[Char]] -> [[Char]]
heads 0 _ = []
heads _ [] = []
heads n (x:xs) = [(take n x)] ++ heads n xs

eqs :: [[Char]] -> Bool
eqs [] = True
eqs (x:xs) 
    | null xs = True
    | otherwise = x == head xs && eqs xs

splits :: [a] -> [([a], [a])]
splits [_] = error "shortList"
splits xs = f [] xs

f :: [a] -> [a] -> [([a], [a])]
f xs [] = []
f xs (y:ys) 
    | null ys = []
    | otherwise = (zs, ys) : f zs ys
        where zs = xs ++ [y]
