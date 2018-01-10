--Maneira 1
raizes a b c =  (x1,x2)
		where
		x1 = (-b + sqrt (abs (delta)))/(2*a)
		x2 = (-b - sqrt (abs (delta)))/(2*a)
                delta = b^2 - 4*(a*c)
--Maneira 2 
raizes1 a b c = if delta < 0
		 then "sem raizes reais"
		 else show (x1,x2)
		 where
		 x1 = (-b + sqrt (abs (delta)))/(2*a)
		 x2 = (-b - sqrt (abs (delta)))/(2*a)
		 delta = b^2 - 4*(a*c)
--Maneira 3
raizes2 a b c |delta < 0 = "sem raizes reais"
	      |otherwise = show (x1,x2)
	      	where
	        x1 = (-b + sqrt (abs (delta)))/(2*a)
	        x2 = (-b - sqrt (abs (delta)))/(2*a)
	        delta = b^2 - 4*(a*c)
--Teste da Solução 1:
Main> raizes 1 (-6) 0
(6.0,0.0)
Main> raizes 1 6 3
(-0.550510257216822,-5.44948974278318)
Main> raizes (-1) 6 3
(-0.464101615137754,6.46410161513775)
--Teste da Solução 2:
Main> raizes 1 (-6) 0
(6.0,0.0)
Main> raizes 1 6 3
(-0.550510257216822,-5.44948974278318)
Main> raizes (-1) 6 3
(-0.464101615137754,6.46410161513775)
Main> raizes 1 50 30
(-0.607378164699064,-49.3926218353009)
--Teste da Solução 2:
Main> raizes 1 (-6) 0
(6.0,0.0)
Main> raizes 1 6 3
(-0.550510257216822,-5.44948974278318)
Main> raizes (-1) 6 3
(-0.464101615137754,6.46410161513775)
Main> raizes 1 50 30
(-0.607378164699064,-49.3926218353009)
