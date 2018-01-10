-- Numero 6
-- Maneira 1
location x y x1 y1 x2 y2 = if (x > x1 && x < x2) && (y > y2 && y < y1)
			   then 1
			   else if ((x == x1 || x == x2) && (y1 <= y) && (y <= y2)) || ((y == y1 || y == y2) && (x1 <= x) && (x <= x2)) 
				then 2
				else 3
-- Maneira 2
location1 x y x1 y1 x2 y2 |(x > x1 && x < x2) && (y > y2 && y < y1) = 1
			  |((x == x1 || x == x2) && (y1 <= y) && (y <= y2)) || ((y == y1 || y == y2) && (x1 <= x) && (x <= x2)) = 2
			  |otherwise = 3
-- Maneira 3
location2 x y x1 y1 x2 y2 = if range1 x y x1 y1 x2 y2
			    then 1
			    else if range2 x y x1 y1 x2 y2
			   	 then 2
				 else 3
			    where
			    range1 a b a1 b1 a2 b2 = (a > a1 && a < a2) && (b > b2 && b < b1) 
			    range2 a b a1 b1 a2 b2 = ((a == a1 || a == a2) && (b1 <= b) && (b <= b2)) || ((b == b1 || b == b2) && (a1 <= a) && (a <= a2))