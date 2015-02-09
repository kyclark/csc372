cpfx :: [[Char]] -> [Char]
cpfx [] = ""
cpfx [x] = x
cpfx (x:y:zs) 
    | null common = cpfx []
    | otherwise = cpfx ([common] ++ zs)
    where common = cpfx2 (zip x y) []

cpfx2 :: [(Char,Char)] -> [Char] -> [Char]
cpfx2 [] acc = acc
cpfx2 ((x,y):zs) acc 
    | x == y = cpfx2 zs (acc ++ [x])
    | otherwise = cpfx2 zs acc
