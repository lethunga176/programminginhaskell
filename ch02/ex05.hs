init' :: [a] -> [a]
init' xs = take (length xs -1) xs

init'' :: [a]-> [a]
init'' xs = reverse (drop 1 (reverse xs))