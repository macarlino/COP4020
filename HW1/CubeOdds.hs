-- 3 Musketeers
module CubeOdds where
cubeOdds :: [Integer] -> [Integer]
cubeOdds xs = [if odd x then (x^3) else x | x <- xs]
