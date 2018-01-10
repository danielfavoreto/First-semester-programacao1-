-- QUESTAO 2
insereOrd k xs = if null xs
		 then [k]
		 else if k <= (head xs)
		      then [k]++xs
		      else [head xs] ++ insereOrd k (tail xs)
-- QUESTAO 3
ordena xs = if null xs || null (tail xs)
	    then xs
	    else insereOrd (head xs) (ordena(tail xs))
geralist xs ys = if null (ordena xs) || null ys
		 then (ordena xs) ++ ys
		 else if head (ordena xs) < head ys
			then head (ordena xs) : geralist (tail (ordena xs)) ys
			else head ys : geralist (ordena xs) (tail ys)