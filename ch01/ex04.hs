qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
    where
        larger = [a | a <- xs, a > x]
        smaller = [b | b <-xs, b <= x]

{-
qsort [1,2,3,4,5]
= {applying qsort}
qsort [5,4] ++ [3] ++ qsort [2,1]
= {applying qsort}
(qsort [] ++ [5] ++ qsort[4]) ++ [3] ++ (qsort[2] ++ [1] + qsort [])
= {applying qsort, above property}
([] ++ [5] ++ [4]) ++ [3] ++ ([2] ++ [1] ++ [])
= {applying ++}
[5,4] ++ [3] ++ [2,1]
= {applying ++}
[5,4,3,2,1]
-}