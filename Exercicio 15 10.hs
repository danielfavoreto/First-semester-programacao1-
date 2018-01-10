-- Maneira 1
quadrante1 x y = if x > 0 && y > 0
		 then 1
		 else 	if x > 0 && y < 0
			then 4
			else 	if x < 0 && y > 0
				then 2
				else	if x < 0 && y < 0
					then 3
					else 	if x == 0 && y == 0
						then 0
						else 	if y == 0
							then 5
							else 6

-- Maneira 2
quadrante2 x y 	| x == 0 && y == 0 = 0
		| y == 0 = 5
		| x == 0 = 6
		| x > 0 && y > 0 = 1
		| x > 0 && y < 0 = 4
		| x < 0 && y > 0 = 2
		| x < 0 && y < 0 = 3

-- Maneira 3 
quadrante3 x y = if x == 0 || y == 0
		 then if x == 0 && y == 0
			then 0 
		        else if x == 0
				then 6
				else 5
		 else if x > 0
			then if y > 0
				then 1
				else 4
			else if y < 0
				then 3
				else 2	

-- Comentarios :
-- a terceira maneira pois a quantidade de reducoes eh menor
-- a segunda maneira pois a quantidade de reducoes eh maior
-- a segunda maneira pois esta mais limpo o seu visual
-- terceira maneira 

-- Numero 3
areaRetangulo = (4-2) * (7-3)

-- Numero 4
-- Devemos adicionar parâmetros e generalizar o algoritmo para quaisquer valores adicionando letras.

areaRetangulo1 a b c d = (c-a) * (d-b)

Main> areaRetangulo1 2 4 6 8
16
(35 reductions, 53 cells)
Main> areaRetangulo1 0 4 6 4
0
(35 reductions, 44 cells)
Main> areaRetangulo1 0 4 10000 5
10000
(35 reductions, 54 cells)
Main> areaRetangulo1 (-5) 4 10000 5
10005
(35 reductions, 58 cells)


-- Numero 5
areaTriangulo x1 y1 x2 y2 x3 y3 = if (lado x1 y1 x2 y2 + lado x2 y2 x3 y3) > lado x1 y1 x3 y3 && (lado x1 y1 x2 y2 + lado x1 y1 x3 y3) > lado x2 y2 x3 y3 && (lado x2 y2 x3 y3 + lado x1 y1 x3 y3) > lado x1 y1 x2 y2
				  then sqrt (p*(p-lado x1 y1 x2 y2)*(p-lado x2 y2 x3 y3)*(p-lado x1 y1 x3 y3))
			          else 0
				  where
				  lado a1 o1 a2 o2 = sqrt ((a1-a2)^2 + (o1-o2)^2)
				  p = (lado x1 y1 x2 y2 + lado x2 y2 x3 y3 + lado x1 y1 x3 y3)/2