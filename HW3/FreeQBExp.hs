module FreeQBExp where
import QBExp
import Data.List

{-
data QBExp = Varref String | QBExp `Or` QBExp 
           | Not QBExp | Exists String QBExp
             deriving (Eq, Show)
-}

freeQBExp :: QBExp -> [String]

freeQBExp qbe = nub (helper qbe)

helper (Varref s) = [s]
helper (e `Or` f) = (freeQBExp e) ++ (freeQBExp f)
helper (Not e) = (freeQBExp e) ++ []
helper (Exists s e) = buildList s e

buildList s e = [x | x <- (freeQBExp e), x /= s]
