-- ex.3
f = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]


-- ex.4
last' xs = xs !! (length xs - 1)


-- ex.5
init' xs = reverse (tail (reverse xs))
