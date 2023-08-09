{-
(&&) :: Bool -> Bool -> Bool
True && True = True
True && False = False
False && True = False
False && False = False

-- (&&)
True && True = True
_    && _    = False
-}

-- Option 1 (||)
or1 :: Bool -> Bool -> Bool
or1 False False = False
or1 False True = True
or1 True False = True
or1 True True = True

-- Option 2
or2 :: Bool -> Bool -> Bool
or2 False False = False
or2  _ _   = True

-- Option 3
or3 :: Bool -> Bool -> Bool
or3 False False = False
or3 _  _ = True

-- Option 4
or4 :: Bool -> Bool -> Bool
or4 b c | b == c    = b 
        | otherwise = True
