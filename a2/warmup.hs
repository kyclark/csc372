lst :: [a] -> a
lst [] = error "empty list"
lst [x] = x
lst (x:xs) = lst xs

initial :: [a] -> [a]
initial [] = []
initial (x:xs) 
    | null xs = []
    | otherwise = x : initial xs

repl :: Int -> a -> [a]
repl 0 _ = []
repl n x = [x] ++ repl (n-1) x

drp :: Int -> [a] -> [a]
drp _ [] = []
drp n list@(x:xs) 
    | n <= 0 = list
    | otherwise = drp (n-1) xs

tk :: Int -> [a] -> [a]
tk _ [] = []
tk n (x:xs) 
    | n <= 0 = []
    | otherwise = x : tk (n-1) xs

has :: Eq a => a -> [a] -> Bool
has _ [] = False
has x (y:ys) 
    | x == y = True
    | otherwise = has x ys

concat2 :: [a] -> [a] -> [a]
concat2 xs [] = xs
concat2 [] xs = xs
concat2 (x:xs) ys = x : concat2 xs ys
