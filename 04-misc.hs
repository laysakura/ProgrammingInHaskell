sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs


abs' :: (Num a, Ord a) => a -> a
abs' n | n >= 0    = n
       | otherwise = -n


-- これ，ghciだと駄目でhugsだとおk
-- pred' :: Int -> Int
-- pred' (n+1) = n


add' :: Num a => a -> a -> a
add' = \x -> (\y -> x + y)


const' :: a -> b -> a
const' x _ = x

const'' :: a -> b -> a
const'' x = \_ -> x


odds' :: Int -> [Int]
odds' n = map f [0..n-1]
  where
    f x = x*2 + 1

odds'' :: Int -> [Int]
odds'' n = map (\x -> x*2 + 1) [0..n-1]


-- 演算子も作れるね
(!!!!!!!!!!!) x y = x + y
