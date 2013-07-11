-- ex.1
f1 :: Int -> Int
f1 n = sum([n' | n' <- [1..n]])


-- ex.2
replicate' :: Int -> a -> [a]
replicate' n x = [x | _ <- [1..n]]


-- ex.3
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | z <- [1..n], y <- [1..z], x <- [1..y], x^2 + y^2 == z^2]


-- ex.4
factors :: Int -> [Int]
factors n = [x | x <- [1..n-1], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [n' | n' <- [1..n], sum(factors n') == n']


-- ex.5  yet
f5 = concat [ [(x, y) | y <- [4, 5, 6]] | x <- [1, 2, 3]]


-- ex.6
find :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions :: Eq a => a -> [a] -> [Int]
positions x xs = find x (zip xs [0 .. (length xs - 1)])


-- ex.7
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum([x * y | (x, y) <- zip xs ys])


-- ex.8
