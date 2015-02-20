mp :: (a -> b) -> [a] -> [b]
mp f [] = []
mp f (x:xs) = f x : mp f xs

filt :: (a -> Bool) -> [a] -> [a]
filt _ [] = []
filt p (x:xs) 
    | p x = x : (filt p xs) 
    | otherwise = filt p xs

fldl :: (b -> a -> b) -> b -> [a] -> b
fldl _ i [] = i
fldl f i (x:xs) = fldl f (f i x) xs

{-
fldr :: (a -> b -> b) -> b -> [a] -> b
fldr _ i [] = i
fldr f i [x] = f x i
fldr f i (x:xs) = fldr f x xs
-}

myany :: (a -> Bool) -> [a] -> Bool
myany f [] = False
myany f (x:xs) 
    | f x = True
    | otherwise = myany f xs

myall :: (a -> Bool) -> [a] -> Bool
myall f [] = True
myall f (x:xs) 
    | not $ f x = False
    | otherwise = myall f xs
