cubeOdds :: [Integer] -> [Integer]

cubeOdds a = [x*x*x | x <- a, odd x]
