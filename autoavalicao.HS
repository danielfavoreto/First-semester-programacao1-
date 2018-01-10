------------------------------------------------------------------------------AUTOAVALIACAO--------------------------------------------------------------------------
-- Questao 1


historicos = [ (2014100001,"joao",[("mat01010","calculo I"),("inf0501011","int a computacao")] ),

                       (2014100003,"pedro",[("mat01010","calculo I"),("inf0501012","programacao I")] )] 

pegue (a,b,[(c,d),(e,f)]) = c
pegue1 (a,b,[(c,d),(e,f)]) = e
pegue2 (a,b,[(c,d),(e,f)]) = a 

get historicos = ( pegue2 (head (historicos)), pegue (head (historicos)) , pegue1 (head (historicos)) )

ver historicos = if historicos == []
		 then []
		 else [get historicos] ++ ver (tail (historicos))
l = ver historicos

hug (a,b,c) = [(a,b),(a,c)]

pertence x xs = [y|y<-xs,y==x]/=[]
letra x = pertence x (historicos)

balboa l = if l == []
	   then []
	   else hug (head l) ++ balboa (tail l)

g = balboa l

cursou mat codigo = elem (mat,codigo) g

-- Questao 2


take1 (a,b,[(c,d),(e,f)]) = (b,a,(c,e))
got historicos = take1 (head (historicos))
see historicos = if historicos == []
		 then []
		 else [got historicos] ++ see (tail (historicos))
h = see historicos

world e (a,b,(c,d)) = if e == c || e == d
		    then [(a,b)]
		    else []
mt z h = if h == []
	 then []
	 else world z (head h) ++ mt z (tail h)

quemcursou codigo = mt codigo h



