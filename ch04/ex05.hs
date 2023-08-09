{-
True && True = True
_    && _     = False
-}

and1 :: Bool -> Bool -> Bool
and1 a b = if a == True then 
                if b == True then True else False 
        else False 