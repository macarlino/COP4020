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
helper (e `Or` f) = (helper e) ++ (helper f)
helper (Not e) = (helper e) ++ []
helper (Exists s e) = buildList s e

buildList s e = [x | x <- (helper e), x /= s]
