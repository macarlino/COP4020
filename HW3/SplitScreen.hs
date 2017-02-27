module SplitScreen where
import WindowLayout

splitScreen :: String -> WindowLayout -> WindowLayout

splitScreen name (Window {wname = nm, width = w, height = h}) = if (nm == name) then Horizontal [(Window {wname = nm, width = w `div` 2, height = h}),(Window {wname = nm, width = w `div` 2, height = h})] else (Window {wname = nm, width = w, height = h})

splitScreen name (Horizontal ws) = Horizontal (next name ws)
splitScreen name (Vertical ws) = Vertical (next name ws)

next _ [] = []
next name (w:ws) = (splitScreen name w) : (next name ws)
