module ToCharFun where

-- higher-order functions
    -- functions that take other functions as arguments or returns a function as result
    
toCharFun :: (Int -> Int) -> (Char -> Char)

toCharFun f x = toEnum (f (fromEnum x))
