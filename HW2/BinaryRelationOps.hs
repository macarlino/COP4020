module BinaryRelationOps where
import BinaryRelation

project1 :: (BinaryRelation a b) -> [a]
project2 :: (BinaryRelation a b) -> [b]
select :: ((a,b) -> Bool) -> (BinaryRelation a b) -> (BinaryRelation a b)
compose :: Eq b => (BinaryRelation a b) -> (BinaryRelation b c) -> (BinaryRelationa c)
