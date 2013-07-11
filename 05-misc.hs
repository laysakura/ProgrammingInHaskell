concat' :: [[a]] -> [a]
concat' xss = [x | xs <- xss, x <- xs]


factors' :: Int -> [Int]
factors' n = [x | x <- [1..n-1], n `mod` x == 0]
