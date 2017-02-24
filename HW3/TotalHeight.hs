module TotalHeight where
import WindowLayout

{-
data WindowLayout = Window {wname :: String, width :: Int, height :: Int}
                  | Horizontal [WindowLayout]
                  | Vertical [WindowLayout]
<<<<<<< HEAD
                    deriving (Show, Eq) 
-}
                  
totalHeight :: WindowLayout -> Int
totalHeight (Window {wname = nm, width = w, height = h}) = h
-- horizontal is maximum of heights
totalHeight (Horizontal wls) = totalMax wls
-- vertical is sum of heights
totalHeight (Vertical wls) = totalSum wls

totalMax [] = 0
totalMax (w:ws) = max (totalHeight w) (totalMax ws)

totalSum [] = 0
totalSum (w:ws) = totalHeight w + totalSum ws
=======
                  deriving (Show, Eq)

-- the height of a <WindowLayout> of form Window 
-- {wname = nm, width = w, height = h} is h

totalHeight :: WindowLayout -> Int
totalHeight (Window _ _ h) = h

-- the height of a <WindowLayout> of the form
-- Horizontal [wl_1, .., wl_n] is 0 if the list if empty
-- otherwise is the maximum of the height of wl_1 through wl_m (inclusive)

totalHeight (Horizontal []) = 0
totalHeight ((Horizontal ((Window n w h):xs))) = findMax h xs
    where 
        findMax max [] = max
        findMax max ((Window _ _ h):xs) = if max > h 
                                          then findMax max xs 
                                          else findMax h xs


-- the height of a <WindowLayout> of the form
-- Vertical [wl_1, .., wl_n] is the sum of the heights of wl_1 through wl_m
-- which is 0 if the list is empty
totalHeight ((Vertical ((Window n w h):xs))) = sumAll h xs
    where
        sumAll lastMax [] = lastMax
        sumAll lastMax ((Window _ _ h):xs) = sumAll (h+lastMax) xs
>>>>>>> 91ac3ee849b04063dcaad44267a0221db318e792
