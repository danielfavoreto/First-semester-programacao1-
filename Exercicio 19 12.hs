-- QUESTAO 1
mesclar xs ys = if null xs || null ys
		 then xs ++ ys
		 else if head xs < head ys
			then head xs : mesclar (tail xs) ys
			else head ys : mesclar xs (tail ys)
-- QUESTAO 2
mesclarlsts xs ys zs = mesclar (mesclar xs ys) zs

-- QUESTAO 3
insereOrd k xs = if null xs
		 then [k]
		 else if k <= (head xs)
		      then [k]++xs
		      else [head xs] ++ insereOrd k (tail xs)
ordena xs = if null xs || null (tail xs)
	    then xs
	    else insereOrd (head xs) (ordena(tail xs))
mesclarD xs ys = mesclar (ordena xs) (ordena ys)

-- TESTES
Main> mesclar [1,2,3,5,7] [4,6,8,10]
[1,2,3,4,5,6,7,8,10]
(207 reductions, 291 cells)

Main> mesclarlsts [1,2,3,5,7] [4,6,8,10] [26,27,28,29]
[1,2,3,4,5,6,7,8,10,26,27,28,29]
(368 reductions, 515 cells)

Main> mesclarD [25,0,15,2,0] [20,59,7,12,1,4,5]
[0,0,1,2,4,5,7,12,15,20,25,59]
(806 reductions, 1103 cells)

