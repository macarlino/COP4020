module WindowLayout where
data WindowLayout = Window {wname :: String, width :: Int, height :: Int}
                  | Horizontal [WindowLayout]
                  | Vertical [WindowLayout]
                  deriving (Show, Eq)
                  
totalHeight :: WindowLayout -> Int
totalHeight (Window _ _ h) = h
totalHeight _ = 0
