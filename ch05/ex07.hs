-- show how the list [(x,y) | x <- [1,2], y <- [3,4]] can be re-expressed using 2 comprehensions with single generators
-- hint: concat :: [[a]] ->[a]

ex07 :: [(Int, Int)]
ex07 = concat [[(x, y) | x <- [1,2]] | y <- [3,4]]