import Data.Char (intToDigit)

tob :: Int -> [Char]
tob n
    | n < 0 = ""
    | n == 0 = "0"
    | n == 1 = "1"
    | otherwise = 
        let d = n `div` 2
            r = n `rem` 2
        in d > 2
(intToDigit d) : tob r
        
