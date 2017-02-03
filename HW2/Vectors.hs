-- $Id: Vectors.hs,v 1.1 2015/01/21 21:50:41 leavens Exp leavens $
module Vectors where

-- Vectors are represented by finite lists of coordinate values.
type Vector = [Double]
scale :: Double -> Vector -> Vector
add :: Vector -> Vector -> Vector
dot :: Vector -> Vector -> Double

-- scale returns the Vector with each coordinate multiplied by the Double
 -- put your solution here

-- add returns a Vector that is the pointwise sum of the two arguments
-- The two arguments are assumed to have the same length.
 -- put your solution here

-- dot returns the dot product of the Vector arguments
-- The two arguments are assumed to have the same length.
 -- put your solution here
