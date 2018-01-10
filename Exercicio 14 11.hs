-- QUESTAO 1
-- FUNCAO 1
listaparesA lst1 lst2 = [(x,y)|x<-lst1, y<-lst2, x>y]

Dadas duas listas, esta função tem por objetivo devolver uma lista de tuplas, com os pares em que cada elemento da primeira lista é maior que um elemento da segunda lista. 

-- DADOS TESTE
Main> listaparesA [] [0]
[]
(32 reductions, 54 cells)
Main> listaparesA [0] []
[]
(31 reductions, 59 cells)
Main> listaparesA [1] [5,3,6]
[]
(63 reductions, 132 cells)
Main> listaparesA [4] [5,3,6]
[(4,3)]
(78 reductions, 153 cells)
Main> listaparesA [4,8] [5,3,6]
[(4,3),(8,5),(8,3),(8,6)]
(154 reductions, 283 cells)
Main> listaparesA [4,8] [10]
[]
(53 reductions, 87 cells)

-- FUNCAO 2
listaparesa [] lst2 = []

listaparesa lst1 [] = []

listaparesa (c:r) lst2 = if c > (head lst2)

                       then (c,(head lst2)):(listapares [c] (tail lst2)) ++ (listapares r lst2)

                       else (listapares [c] (tail lst2)) ++ (listapares r lst2)

Esta funcao 2 tem o mesmo objetivo da funcao 1, mas usando c (head da lista) e r (tail da lista), fazendo uma comparação de c com o head da segunda lista. Caso c seja
maior, ele é posto em uma tupla e chamando a função recursivamente. OBS1: A função tem um erro quando instancia a segunda lista com apenas um elemento e este elemento
não é menor que nenhum dos elementos da primeira lista. OBS2: Quando instanciada para valores da segunda lista "muito grandes", a função não opera da maneira correta 
(vide dados de teste).

-- DADOS TESTE
Main> listaparesa [] [0]
[]
(28 reductions, 51 cells)
Main> listaparesa [0] []
[]
(28 reductions, 51 cells)
Main> listaparesa [1] [5,3,6]
[(1,3)]
(238 reductions, 399 cells)
Main> listaparesa [4] [5,3,6]
[(4,3)]
(231 reductions, 373 cells)
Main> listaparesa [4,8] [5,3,6]
[(4,3),(8,5)]
(538 reductions, 821 cells)
Main> listaparesa [4,8] [10]
[
Program error: pattern match failure: head []
Main> listaparesa [4,8] [100,101]
[(4,101),(8,100)]
(312 reductions, 539 cells)


--QUESTAO 2
pares [] ys = []
pares xs [] = []
pares xs ys = if length ys == 2
	      then if abs (head xs  - ys!!0) <= abs (head xs - ys!!1)
			then [(head xs,ys!!0)] 
			else [(head xs,ys!!1)]
	      else if length ys == 1
		   then [(head xs,head ys)]
                   else if abs (head xs  - ys!!0) <= abs (head xs - ys!!1)
			then [(head xs,ys!!0)] ++ pares xs (drop 2 ys)
			else [(head xs , head (tail ys))] ++ pares xs (tail(tail ys))
select ls1 = [head [(a,b)|(a,b)<-ls1, menores (a,b) ls1 == []]]
menores x xs = [y|y<-xs,y<x] 

listapares [] lst2 = []
listapares lst1 lst2 =  if length lst1 == 1
                        then select ( pares lst1 lst2 )
                        else select ( pares lst1 lst2 ) ++ listapares (tail lst1) lst2

--QUESTAO 3
lospares [] ys = []
lospares xs ys = if length xs == 1
	   	 then menor [(a,b,(a-b))|a<-xs,b<-ys]
	   	 else menor [(a,b,(a-b))|a<-xs,b<-ys] ++ lospares (tail xs) ys

menor lst1 = [(a,b,c)|(a,b,c)<-lst1, menores (a,b,c) lst1 == [] ]

