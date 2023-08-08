last' :: [a] -> a
last' xs = head (reverse xs)

last'' :: [a] -> a
last'' xs = head (drop (length xs - 1) xs)

last''' xs = (drop (length xs - 1) xs) !! 0

