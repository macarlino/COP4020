module FreeQBExp where
import QBExp

freeQBExp :: QBExp -> [String]

freeQBExp (Varref a) = [a]
freeQBExp (b `Or` c) = (freeQBExp b) ++ (freeQBExp c)
freeQBExp (Not d) = (freeQBExp d) ++ []
freeQBExp (Exists e f) = buildList e f

buildList e f = [x | x <- (concat' f), x /= e]

concat' (Varref a) = [a]
concat' (b `Or` c) = (freeQBExp b) ++ (freeQBExp c)
concat' (Not d) = (freeQBExp d) ++ []
concat' (Exists e f) = buildList e f
