module QBExp where

data QBExp = Varref String | QBExp `Or` QBExp
           | Not QBExp | Exists String QBExp
           deriving (Eq, Show)

freeQBExp :: QBExp -> [String]
