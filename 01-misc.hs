sum' [] = 0
sum' (x:xs) = x + sum'(xs)


qsort [] = []
qsort (x:xs) = qsort ls ++ [x] ++ qsort hs
  where
    ls = [l| l <- xs, l <= x]
    hs = [h| h <- xs, h > x]
