--Maneira 1
raizes a b c =   if delta < 0
		 then "sem raizes reais"
		 else if delta == 0
			then show ("uma raiz real",x1)
			else show (x1,x2)
		 where
		 x1 = (-b + sqrt (delta))/(2*a)
		 x2 = (-b - sqrt (delta))/(2*a)
		 delta = b^2 - 4*(a*c)
--Maneira 2 
raizes1 a b c =  if delta < 0
		 then "sem raizes reais"
		 else show (x1,x2)
		 where
		 x1 = (-b + sqrt (delta))/(2*a)
		 x2 = (-b - sqrt (delta))/(2*a)
		 delta = b^2 - 4*(a*c)
--Maneira 3
raizes2 a b c |delta < 0 = "sem raizes reais"
	      |otherwise = show (x1,x2)
	      	where
	        x1 = (-b + sqrt (delta))/(2*a)
	        x2 = (-b - sqrt (delta))/(2*a)
	        delta = b^2 - 4*(a*c)

-- Testes maneira 1
Main> raizes 50 6 30
"sem raizes reais"
(436 reductions, 659 cells)

Main> raizes 4 (-4) 1
"(\"uma raiz real\",0.5)"
(787 reductions, 1137 cells)

Main> raizes 1 (-5) 6
"(3.0,2.0)"
(384 reductions, 583 cells)

-- Testes maneira 2
Main> raizes1 50 6 30
"sem raizes reais"
(436 reductions, 659 cells)

Main> raizes1 4 (-4) 1
"(0.5,0.5)"
(375 reductions, 568 cells)

Main> raizes1 1 (-5) 6
"(3.0,2.0)"
(375 reductions, 571 cells)

-- Testes maneira 3
Main> raizes2 50 6 30
"sem raizes reais"
(436 reductions, 659 cells)

Main> raizes2 4 (-4) 1
"(0.5,0.5)"
(375 reductions, 568 cells)

Main> raizes2 1 (-5) 6
"(3.0,2.0)"
(375 reductions, 571 cells)

