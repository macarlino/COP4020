module WhatIndex where

whatIndex :: (Eq a) => a -> [a] -> Integer

whatIndex _ [] = -1

whatIndex n xs = findIndex 0 xs
    where
        findIndex _ [] = -1
        findIndex c (x:xs) = if (n == x) then c else findIndex (c+1) xs
