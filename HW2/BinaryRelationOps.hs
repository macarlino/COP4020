module BinaryRelationOps where
import BinaryRelation

project1 :: (BinaryRelation a b) -> [a]
project2 :: (BinaryRelation a b) -> [b]
select :: ((a,b) -> Bool) -> (BinaryRelation a b) -> (BinaryRelation a b)
compose :: Eq b => (BinaryRelation a b) -> (BinaryRelation b c) -> (BinaryRelation a c)

project1 [] = []
project1 ((a, b) : rest) = a : project1 rest

project2 [] = []
project2 ((a, b) : rest) = b : project2 rest

select as [] = []
select as bs = [b | b <- bs, as(b) == True]

compose [] [] = []
compose _ [] = []
compose [] _ = []
compose _ _ = []
-- compose as bs = [(w,z) | [(w,x)] <- as, [(y,z)] <- bs]
-- compose as bs = [((project1 a),(project2 b)) | a <- as, b <- bs]
