a) potencia a x = if x<0 
               then 1/(a^(-x)) 
	       else a^x	


b) notas q = n100 + n50 + n20 + n10 + n5 + n2 + n1 
                     where
                      n100 = div q 100
                      r100 = mod q 100
                      n50 = div r100 50
                      r50 = mod r100 50
                      n20 = div r50 20
                      r20 = mod r50 20
                      n10 = div r20 10
                      r10 = mod r20 10
                      n5 = div r10 5
		      r5 = mod r10 5
                      n2 = div r5 2
                      r2 = mod r5 2
                      n1 = div r2 1


c) faren c = ((9*c)/5) + 32

d) juros v=(v*(1+5/100)^12) -v

e) areacinza r= (areamaior r) - (areamenor r)
             where
             areamaior r= pi*((3/2*r)^2)
             areamenor r= pi*(r^2) 


f) quadrante x y = if x == 0 && y == 0
                 then "origem"
                 else if x>0 && y>0
                      then "Primeiro quadrante"
                      else if x<0 && y<0
                           then "terceiro quadrante"
                           else "segundo ou quarto quadrante"  

g) pertencex x a b =if a < b
                  then x >= a && x < b
                  else x >= b && x < a

h) ma3 a b c = if (a <= b && b <= c) || (c <= b && b <= a) 
		--b está no meio?
            then (a+c)/2 --c está no meio?

	    else if (a <= c && c <= b) || (b <= c && c <= a)

                 then (a+b)/2
                 else (b+c)/2

i) mapa p1 p2 p3 p4 = if mod (p1 + p2 + p3 + p4) 5 == 0
                   then show "é divisivel por 5"
                   else show "nao é divisivel por 5"

j) inter r x = (r^2)*(x - sin x)

k) arearegiao a b = (b/360)*(pi*((a/2)^2))
 area1 a = ((a^2)*(sqrt 3))/4
 area2 a = arearegiao a 60
 area3 a = arearegiao a 120
 area4 a = (pi*((a^2)/4)/4)
 area5 a = (pi*((a^2)/4)/4)
 area6 a = pi*(a^2)/4