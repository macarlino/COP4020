module Add10List where
add10_list_rec :: [Integer] -> [Integer]
add10_list_comp :: [Integer] -> [Integer]

add10_list_rec [] = []
add10_list_rec (x:xs) = (x+10):(add10_list_rec xs)

add10_list_comp xs = [10 + x | x <- xs]