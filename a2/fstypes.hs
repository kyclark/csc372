import Data.Char (chr, ord)

-- fa :: [Int] -> Char -> Bool -> (Bool, Char, [Int])
fa a b c
    | (ord b `elem` a) == c = (c, b, a)
    | otherwise = (not c, b, a)

-- fb :: (Num t, Num t1) => (t1, t) -> (t, t1)
fb (a, b) = (a, a + b)

-- fc :: (Bool, [Char]) -> Int -> Integer -> [Bool]
fc (a, b) c d 
    | a = [a]
    | (b !! c == chr (fromInteger d)) = [a]
    | otherwise = [a]

-- fd :: (a, Int) -> (Int, t) -> (t, [a])
fd (a, b) (c, d) 
    | b + 1 > 10 = (d, [a])
    | otherwise = (a, [a])

-- fe :: [[[Int]]] -> [[[a]]]
fe [[[a]]] = 
    let x = replicate a 'a' 
    [[
