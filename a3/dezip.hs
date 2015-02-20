dezip :: [(a,b)] -> ([a], [b])

dezip xs = (map fst xs, map (fst . swap) xs)

swap (x,y) = (y,x)

{-
dezip xs = dezip' xs ([], []) 
    where 
        dezip' [] acc = acc
        dezip' ((a,b):rest) (as, bs) = dezip' rest (as ++ [a], bs ++ [b])
-}
