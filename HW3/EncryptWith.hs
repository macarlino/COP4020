module EncryptWith where
import ToCharFun

encryptWith :: (Int -> Int) -> [String] -> [String]

encryptWith _ [] = []
encryptWith f (x:xs) = (character f x) : (encryptWith f xs)

character f xs = [toCharFun f x | x <- xs]
