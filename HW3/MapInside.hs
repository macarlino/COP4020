module MapInside where

mapInside :: (a -> b) -> [[a]] -> [[b]]
mapInside f lls = [map f x | x <- lls]
