paired :: [Char] -> Bool
paired [] = True
paired xs = f (count xs)

count [] = []
count (x:xs)
    | x == '(' = 1 : count xs
    | x == ')' = (-1) : count xs
    | otherwise = count xs

f :: [Int] -> Bool
f [] = False
f [x] 
    | x == 0 = True
    | otherwise = False
f (x:y:zs)  
    | x < 0 || s < 0 = False
    | otherwise = f (s:zs)
        where s = x + y
