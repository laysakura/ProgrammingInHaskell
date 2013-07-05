mysum [] = 0
mysum (x:xs) = x + mysum(xs)


qsort [] = []
qsort (x:xs) = qsort ls ++ [x] ++ qsort hs
  where
    ls = [l| l <- xs, l <= x]
    hs = [h| h <- xs, h > x]
