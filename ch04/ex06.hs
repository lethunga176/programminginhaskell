{-
True && b = b
False && _ = False
-}

and2 :: Bool -> Bool -> Bool
and2 a b = if a == True then b else False
                
