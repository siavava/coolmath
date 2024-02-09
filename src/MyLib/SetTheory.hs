module MyLib.SetTheory where

-- | Cartesian product of two sets
--
-- >>> cartesian [1, 2] [3, 4]
-- [(1,3),(1,4),(2,3),(2,4)]
cartesian :: [a] -> [b] -> [(a, b)]
cartesian xs ys = [(x, y) | x <- xs, y <- ys]

-- | N-ary cartesian sequences from an N-sequence
--
-- >>> cartesian1 [5, 6]
-- [[5,5],[5,6],[6,5],[6,6]]
cartesian1 :: [a] -> [[a]]
cartesian1 = pure >>= traverse

-- | Power set of a set
--
-- >>> powerSet [1, 2, 3]
-- [[],[3],[2],[2,3],[1],[1,3],[1,2],[1,2,3]]
powerSet :: [a] -> [[a]]
powerSet [] = [[]]
powerSet (x:xs) = powerSet xs ++ map (x:) (powerSet xs)
