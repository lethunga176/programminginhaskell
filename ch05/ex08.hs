--Returns the list of all positions at which a value occurs in a  list
positions :: Eq a => a -> [a] -> Int
positions x xs = [i | (x', i) <- zip xs [0..], x = x']

-- Find: lookup table
find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

--Redefine the function positions using the funtion find
positions' :: Eq a => a -> [a] -> [Int]
positions' x xs = find x (zip xs [0..])
        