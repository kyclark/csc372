tob' :: Int -> [Int]
tob' n
    | d == 0 = [r]
    | otherwise = r : tob' d
    where d = n `div` 2
          r = n `rem` 2

i2s :: [Int] -> [Char]
i2s [] = ""
i2s (x:xs) = show x ++ i2s xs

tob :: Int -> [Char]
tob n = i2s (reverse (tob' n))
