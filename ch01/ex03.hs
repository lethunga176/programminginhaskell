---Definition
product' [] = 1
product' (n:ns) = n * product' ns

{-
product [2,3,4]
= {applying product}
2 * (product [3,4])
= {applying product}
2 * (3 * product [4])
= {applying product}
2 * (3 * (4 * product []))
= {applying product}
2 * (3 * (4 * 1))
= {applying *}
24 
-}