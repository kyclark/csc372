paired :: [Char] -> Bool
paired [] = True
--paired xs = count xs []
--    where count [] 

count [] = []
count (x:xs)
    | x == '(' = '+' : count xs
    | x == ')' = '-' : count xs
    | otherwise = count xs

{-
    | x == '(' = findRight xs
    | x == ')' = False
    | otherwise = paired xs
    where 
        findRight [] = False
        findRight all@(x:xs) 
            | x == ')' = True
            | x == '(' = paired all
            | otherwise = findRight xs
-}
