luhnDouble :: Int -> Int
luhnDouble x | x + x > 9 = x + x - 9
             | otherwise = x + x

luhn :: Int -> Int -> Int -> Int -> Bool
luhn x y z t = (luhnDouble x + y + luhnDouble z + t) `mod` 10 == 0