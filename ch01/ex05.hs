qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
    where
        smaller = [a | a <- xs, a < x]
        larger = [b | b <- xs, b > x]

{-
qsort [2,2,3,1,1]
= {applying qsort}
qsort [1,1] ++ [2] ++ qsort [3]
= {applying first qsort}
(qsort [] ++ [1] ++ qsort []) ++ [2] ++ qsort [3]
= {applying second qsort}
(qsort [] ++ [1] ++ qsort []) ++ [2] ++ (qsort [] ++ [3] ++ qsort [])
= {applying qsort}
[] ++ [1] ++ [] ++ [2] ++ [] ++ [3] ++ []
= {applying ++}
[1,2,3]
-}
