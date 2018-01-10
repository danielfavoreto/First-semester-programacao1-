--QUESTAO 1
impostorenda s = if s <= 2000
		 then s-ir1
		 else if s > 2000 && s <= 5000
			then s-ir2
			else if s > 5000 && s <= 10000
				then s-ir3
				else s-ir4
		 where
		 ir1 = 0
		 ir2 = s*0.1
		 ir3 = s*0.15
		 ir4 = s*0.18

impostorrenda s |s<=2000 = ir1
		|s > 2000 && s <= 5000 = ir2
		|s > 5000 && s <= 10000 = ir3
		|otherwise = ir4
		where
		ir1 = s
		ir2 = s-s*0.1
		ir3 = s-s*0.15
		ir4 = s-s*0.18	

--QUESTAO 2
lucro e f = if ponto >= 1 && ponto <= 10
	    then 100
	    else if ponto >= 11 && ponto <= 20
		 then 200
		 else if ponto >= 21 && ponto <= 30
		      then 300
		      else if ponto >= 31 && ponto <= 40
			   then 400
			   else 500
	   where
	   ponto = e-(2/3)*f