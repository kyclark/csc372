street :: [(Int, Int, Char)] -> IO ()
street buildings = putStr result
    where result = street' (maxHeight buildings) buildings

street' :: Int -> [(Int, Int, Char)] -> [Char]
street' floor buildings
    | floor < 0 = []
    | otherwise = (mkStories floor buildings) ++ "\n"
        ++ street' (floor - 1) buildings

mkStories :: Int -> [(Int, Int, Char)] -> [Char]
mkStories _ [] = []
mkStories floor ((width, height, char):xs) 
    | floor < 0 = []
    | otherwise = (replicate width c) ++ mkStories floor xs
        where c = charForFloor floor height char

charForFloor :: Int -> Int -> Char -> Char
charForFloor floor bldgHeight char 
    | floor == 0 = '-'
    | floor > bldgHeight = ' '
    | otherwise = char

maxHeight [] = 0
maxHeight ((_, h, _):xs) = max h (maxHeight xs)
