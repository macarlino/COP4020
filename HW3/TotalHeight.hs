module WindowLayout where
data WindowLayout = Window {wname :: String, width :: Int, height :: Int}
                  | Horizontal [WindowLayout]
                  | Vertical [WindowLayout]
                  deriving (Show, Eq)

-- the height of a <WindowLayout> of form Window 
-- {wname = nm, width = w, height = h} is h

totalHeight :: WindowLayout -> Int
totalHeight (Window _ _ h) = h

-- the height of a <WindowLayout> of the form
-- Horizontal [wl_1, .., wl_n] is 0 if the list if empty
-- otherwise is the maximum of the height of wl_1 through wl_m (inclusive)

totalHeight (Horizontal []) = 0
--totalHeight (Horizontal xs) = [(Window wn w h) | (Window wn w h) <- xs]


totalHeight ((Horizontal ((Window n w h):xs))) = findMax h xs
    where 
        findMax max [] = max
        findMax max ((Window _ _ h):xs) = if max > h 
                                          then findMax max xs 
                                          else findMax h xs



-- the height of a <WindowLayout> of the form
-- Vertical [wl_1, .., wl_n] is the sum of the heights of wl_1 through wl_m
-- which is 0 if the list is empty
