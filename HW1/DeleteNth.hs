module DeleteNth where
deleteNth :: (Eq a) => Int -> a -> [a] -> [a]

-- just example of what is passed in to deleteNth
-- deleteNth n toDelete [list]

-- base case 1: if we are passed an empty list just return the empty list
if deleteNth _  _ [] = []

-- base case 2: if the count is 0, return the tail of the list (without the element a)
if deleteNth 0 toDelete [list] = tail ([list])

-- inductive step 1: decrement the count of the toDelete element if it matches (or don't if it doesn't) and pass recursive call to it
if a == toDelete a : deleteNth n-1 toDelete tail(list)
else a : deleteNth n toDelete tail(list)
