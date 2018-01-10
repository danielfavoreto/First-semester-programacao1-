-- 1
trio [] = False
trio (x:xs)
			| length (x:xs) < 3 = False 
			|(x == xs!!0) && (x == xs !! 1) = True
			| otherwise = trio xs
			
-- 2
trios [] = 0
trios (x:xs)
			| length (x:xs) < 3 = 0
			| (x == xs !! 0) && (x == xs !! 1) = 1 + trios xs
			| otherwise = trios xs

-- 3
repete num (x:xs) = length [y | y <- xs, y == x]

-- 4
freq a b xs = length [x | x <- xs, x == b] == a

