module ApplyToList where
import BinaryRelation

applyRel :: (Eq k) => k -> (BinaryRelation k v) -> [v]
applyToList :: (Eq k) => [k] -> (BinaryRelation k v) -> [v]

-- BinaryRelation is represented as a list of pairs 
    -- type BinaryRelation k v = [(k,v)]
        -- k is called a "key"
        -- v is called a "value"
        
applyRel _ [] = []
applyRel ky pairs = [y | (x,y) <- pairs, ky == x]

applyToList [] _ = []
applyToList _ [] = []
applyToList (k:keys) ((x,y):pairs) = (applyRel k ((x,y):pairs)) ++ applyToList keys ((x,y):pairs)

-- keys ["hello","goodbye"]
-- pairs [("hello","Matt"),("goodbye","Bob"),("hello","Ryan")]
-- expected answer ["Matt","Ryan","Bob"]
