module FreeQBExp where
import QBExp

freeQBExp :: QBExp -> [String]

freeQBExp (Varref a) = [a]
freeQBExp (b `Or` c) = (freeQBExp b) ++ (freeQBExp c)
freeQBExp (Not d) = (freeQBExp d) ++ []
freeQBExp (Exists e f) = buildList e f

concat' (Varref e) = []
concat' (Exists f s) = buildList f s
concat' (a `Or` b) = (freeQBExp a) ++ (freeQBExp b)

buildList f s = [x | x <- (concat' s), x /= f]
