-- function that map a positive integer to its list of positive factors
factors :: Int -> [Int]
factors n = [x |x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (init(factors x)) == x]
