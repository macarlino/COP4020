module TotalHeight where
import WindowLayout

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
