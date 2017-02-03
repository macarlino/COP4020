-- 3 Musketeers
module DeleteNth where
deleteNth :: (Eq a) => Int -> a -> [a] -> [a]

deleteNth _ _ [] = []
deleteNth 1 toDelete (x:xs) = if (toDelete == x) then xs else x : (deleteNth 1 toDelete xs)
deleteNth n toDelete (x:xs) = if (toDelete == x) then x : (deleteNth (n-1) toDelete xs) else x : (deleteNth (n) toDelete xs)
