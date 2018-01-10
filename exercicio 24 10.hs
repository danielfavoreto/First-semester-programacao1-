--Maneira 1
intercepta a b c a1 b1 = if delta < 0
			  then "nao intercepta"
			  else if x1 == x2 && p1 == p2
			       then show (("intercepta em um ponto") ,(x1,p1))
			       else show ((x1,p1),(x2,p2))
			  where
			  delta = (b - a1)^2 - 4*(a*(c-b1))
			  x1 = (-(b-a1) + sqrt delta)/(2*a)
			  x2 = (-(b-a1) - sqrt delta)/(2*a)
			  p1 = a*(x1^2) + x1*b + c
			  p2 = a*(x2^2) + x2*b + c
--Maneira 2			
intercepta1 a b c a1 b1 | delta < 0 = "nao intercepta"
			| x1 == x2 && p1 == p2 = show (("intercepta em um ponto") ,(x1,p1))
			| otherwise = show ((x1,p1),(x2,p2))
			  where
			  delta = (b - a1)^2 - 4*(a*(c-b1))
			  x1 = (-(b-a1) + sqrt delta)/(2*a)
			  x2 = (-(b-a1) - sqrt delta)/(2*a)
			  p1 = a*(x1^2) + x1*b + c
			  p2 = a*(x2^2) + x2*b + c
--Maneira 3
intercepta2 a b c a1 b1 = if delta < 0
			  then "nao intercepta"
			  else if x1 == x2 && p1 == p2
			       then show (("intercepta em um ponto") ,(x1,p1))
			       else show ((x1,p1),(x2,p2))
			  where
			  delta = (d)^2 - 4*(a*(e))
			  x1 = (-(d) + sqrt delta)/(2*a)
			  x2 = (-(d) - sqrt delta)/(2*a)
			  p1 = a*(x1^2) + x1*b + c
			  p2 = a*(x2^2) + x2*b + c
			  d = b - a1
			  e = c-b1

-- Testes maneira 1
Main> intercepta 1 (-5) 8 0 (-1)
"nao intercepta"
(416 reductions, 702 cells)

Main> intercepta 2 0 0 3 2
"((2.0,8.0),(-0.5,0.5))"
(866 reductions, 1324 cells)

Main> intercepta 1 (-6) 8 0 (-1)
"(\"intercepta em um ponto\",(3.0,-1.0))"
(1497 reductions, 2147 cells)

-- Testes maneira 2
Main> intercepta 1 (-5) 8 0 (-1)
"nao intercepta"
(416 reductions, 702 cells)

Main> intercepta 2 0 0 3 2
"((2.0,8.0),(-0.5,0.5))"
(866 reductions, 1324 cells)

Main> intercepta 1 (-6) 8 0 (-1)
"(\"intercepta em um ponto\",(3.0,-1.0))"
(1497 reductions, 2147 cells)

-- Testes maneira 3
Main> intercepta 1 (-5) 8 0 (-1)
"nao intercepta"
(416 reductions, 702 cells)

Main> intercepta 2 0 0 3 2
"((2.0,8.0),(-0.5,0.5))"
(866 reductions, 1324 cells)

Main> intercepta 1 (-6) 8 0 (-1)
"(\"intercepta em um ponto\",(3.0,-1.0))"
(1497 reductions, 2147 cells)
