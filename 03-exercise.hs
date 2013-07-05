-- ex.1
-- ['a', 'b', 'c'] :: [Char]
-- ('a', 'b', 'c') :: (Char, Char, Char)
-- [(False, '0'), (True, '1')] :: [(Bool, Char)]
-- ([False, True], ['0', '1']) :: ([Bool], [Char])
-- [tail, init, reverse] :: [[a] -> [a]]


-- ex.2
-- ex.3
second :: [x] -> x
second xs = head (tail xs)

swap :: (x, y) -> (y, x)
swap (x, y) = (y, x)

pair :: x -> (y -> (x, y))
pair x y = (x, y)

double :: Num x => x -> x
double x = x * 2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (x -> x) -> x -> x  -- 右結合なので (x -> x) -> (x -> x)
twice f x = f (f x)
