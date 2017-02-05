module ListMin where

listMin :: (Ord a) => [a] -> a

listMin [] = error "The list must be non-empty"
listMin (x:xs) = findMin x xs
    where
        findMin a [] = a
        findMin a (y:ys) = if (a < y) then findMin a ys else findMin y ys
