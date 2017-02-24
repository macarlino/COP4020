module WindowLayout where
data WindowLayout = Window {wname :: String, width :: Int, height :: Int}
                  | Horizontal [WindowLayout]
                  | Vertical [WindowLayout]
                  deriving (Show, Eq)

splitScreen :: String -> WindowLayout -> WindowLayout
splitScreen name (Window _ w h) = (Window name w h)
