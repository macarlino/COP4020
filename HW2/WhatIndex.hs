-- using m to count the iterations
m = 0

whatIndex :: (Eq a) => a -> [a] -> Integer

-- the the list is empty and/or the number wasn't in the list
whatIndex _ [] = -1

-- if the number was found, return the iteration
-- otherwise use tail recursion
whatIndex n (x:xs) = if (n == x) then m else whatIndex n xs
