-- QUESTAO 1
insord k xs = if null xs
	      then [k]++xs
	      else if k < head xs
		   then k:xs
		   else [head xs] ++ insord k (tail xs)
ordena xs = if null xs || null (tail xs)
	    then xs
	    else insord (head xs) (ordena (tail xs))
existe xs = if xs == [] || (tail xs) == [] || tail (tail xs) == []
	    then [False]
	    else if (head (ordena xs)) == head (tail (ordena xs)) && head (tail (ordena xs)) == head (tail (tail (ordena xs)))
		 then [True] ++ existe (tail (ordena xs))
	    	 else [False] ++ existe (tail (ordena xs))
trio xs = elem True (existe xs) 
trio [] = False
-- QUESTAO 2
triox xs = if (tail xs) == []
	   then [0]
	   else if head (existe xs) == True
	      	  then [1] ++ triox (tail xs)
	      	  else [0] ++ triox  (tail xs)
trios xs = sum (triox xs)