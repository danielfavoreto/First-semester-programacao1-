--Exercicio 1--
vmedia1 80 500 = 500/80

--Teste da solução
Main> vmedia1 80 500
6.25
(52 reductions, 139 cells)

--Exercicio 2--
vmedia2 90 400 = 400/90

--Teste da solução
Main> vmedia2 90 400
4.44444444444444
(45 reductions, 87 cells)

--Exercicio 3--
vmedia3 v 500 = if v <= 0 
		then 0
		else 500/v

--Teste da solução
Main> vmedia3 1 500
500.0
(44 reductions, 70 cells)
Main> vmedia3 50 500
10.0
(44 reductions, 69 cells)
Main> vmedia3 1000 500
0.5
Main> vmedia3 (-1000) 500
0.0

--Exercicio 4--
vmedia4 v d = if v <= 0 || d <= 0
		then 0
		else d/v

--Teste da solução
Main> vmedia4 (-1000) 500
0.0
(39 reductions, 55 cells)
Main> vmedia4 1000 (-500)
0.0
(54 reductions, 74 cells)
Main> vmedia4 000 500
0.0
(39 reductions, 54 cells)
Main> vmedia4 1 00
0.0
(54 reductions, 73 cells)
Main> vmedia4 1 10
10.0
(53 reductions, 76 cells)

--Exercicio 5--
laran1 0.1 12 = 0.1*12

--Teste da solução
Main> laran1 0.1 12
1.2
(46 reductions, 76 cells)

--Exercicio 6--
laran2 0.1 1000 = 0.1*1000

--Teste da solução
Main> laran2 0.1 1000
100.0
(46 reductions, 77 cells)

--Exercicio 7--
pera1 1.20 12 = 1.20*12

--Teste da solução
Main> pera1 1.2 12
14.4
(46 reductions, 77 cells)

--Exercicio 8--
pera2 1.20 20 = 1.20*20

--Teste da solução
Main> pera2 1.2 20
24.0
(46 reductions, 76 cells)

--Exercicio 9--
quan v q = if v <= 0 || q <= 0 
	   then 0
	   else v*q

--Teste da solução
Main> quan 0 0
0
(38 reductions, 66 cells)
Main> quan 0 1
0
(36 reductions, 44 cells)
Main> quan 1 0
0
(49 reductions, 59 cells)
Main> quan 1 1
1
(49 reductions, 64 cells)
Main> quan (-1) 1
0
(36 reductions, 46 cells)
Main> quan (-1) (-1)
0
(36 reductions, 46 cells)
Main> quan 3 512
1536
(49 reductions, 67 cells)


--Exercicio 10--
lista [(p,q1),(m,q2),(b,q3)] [(p1,v1),(m1,v2),(b1,v3)] = [(p,q1*v1),(m,q2*v2),(b,q3*v3),("Total",(q1*v1)+(q2*v2)+(q3*v3))]

--Teste da solução
Main> lista [("maca",5),("pera",10),("banana",2)] [("maca",2.5),("pera",8.9),("banana",3.5)]
[("maca",12.5),("pera",89.0),("banana",7.0),("Total",108.5)]
(484 reductions, 796 cells)

Main> lista [("maca",5),("pera",10),("banana",2)] [("maca",2.5),("pera",8.9),("banana",0)]
[("maca",12.5),("pera",89.0),("banana",0.0),("Total",101.5)]
(481 reductions, 754 cells)

Main> lista [("maca",0),("pera",0),("banana",1)] [("maca",2.5),("pera",8.9),("banana",0)]
[("maca",0.0),("pera",0.0),("banana",0.0),("Total",0.0)]
(481 reductions, 742 cells)
