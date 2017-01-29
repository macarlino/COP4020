-- Part A
add10_list_comp :: [Integer] -> [Integer]
add10_list_comp a = [ x+10 | x <- a]

-- Part B
-- add10_list_rec :: [Integer] -> [Integer]
-- add10_list_rec [] = error "can't pass in empty list"
-- add10_list_rec a = head(a) + 10 : add10_list_rec tail a
