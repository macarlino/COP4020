module ApplyToList where
import BinaryRelation

applyRel :: (Eq k) => k -> (BinaryRelation k v) -> [v]
applyToList :: (Eq k) => [k] -> (BinaryRelation k v) -> [v]
