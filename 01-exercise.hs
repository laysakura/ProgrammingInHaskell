-- ex.1
times4 n = 4 * n


-- ex.2
-- sum [x] = x + sum [] = x + 0 = x


-- ex.3
product' [] = 1
product' (n:ns) = n * product'(ns)


-- ex.4
rev_qsort [] = []
rev_qsort (x:xs) = rev_qsort hs ++ [x] ++ rev_qsort ls
  where
    ls = [l| l <- xs, l <= x]
    hs = [h| h <- xs, h > x]


-- ex.5
-- uniqしつつソートした列が得られる
