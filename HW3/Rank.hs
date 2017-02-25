module Rank where
import Data.List

rank :: (Ord a) => [a] -> [(Int, a)]

rank [] = []
rank xs = counter 1 1 (sort xs)

counter _ _ [] = []
counter p c (x:xs) = if (x == (if (xs /= []) then (head xs) else x)) 
                    then ((c, x):(counter (p+1) c xs)) 
                    else ((c, x):(counter 1 (c+p) xs))
