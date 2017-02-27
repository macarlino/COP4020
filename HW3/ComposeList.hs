module ComposeList where

composeList :: [(a -> a)] -> (a -> a)

composeList = foldr (.) id
