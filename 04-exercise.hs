-- ex.1
halve :: [a] -> ([a], [a])
halve xs = (take l xs, drop l xs)
  where l = length xs `div` 2


-- ex.2
safetail_a :: [a] -> [a]
safetail_a xs = if null xs then [] else tail xs
safetail_b xs | null xs = []
              | otherwise = tail xs
safetail_c [] = []
safetail_c xs = tail xs


-- ex.3
(||+) :: Bool -> Bool -> Bool
(||+) True True   = True
(||+) True False  = True
(||+) False True  = True
(||+) False False = False

(||++) True _  = True
(||++) False b = b

(||+++) False False = False
(||+++) _ _ = True

(||++++) False False = False
(||++++) _ _ = True


-- ex.4
-- ガードの方がかっこいい
(&&+) :: Bool -> Bool -> Bool
(&&+) a b | a == True, b == True = True
          | otherwise = False


-- ex.5
(&&++) :: Bool -> Bool -> Bool
(&&++) a b | a == True = b
           | otherwise = False


-- ex.6
mult' :: Num a => a -> (a -> (a -> a))
mult' = \x -> (\y -> (\z -> x * y * z))
