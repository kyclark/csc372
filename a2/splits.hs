splits :: [a] -> [([a], [a])]
splits [_] = error "shortList"
splits xs = f [] xs

f :: [a] -> [a] -> [([a], [a])]
f xs [] = []
f xs (y:ys) 
    | null ys = []
    | otherwise = (zs, ys) : f zs ys
        where zs = xs ++ [y]

--g :: [a] -> [a]
g xs = g' xs []
g' [] _ = []
g' (x:xs) acc = (acc ++ x) : g' xs acc

