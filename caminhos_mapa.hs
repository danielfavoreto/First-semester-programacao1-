-- inicio de constantes fornecidas no exercicio

-- lista de cidades:
nome_coord =   [("dores do rio preto", 3.0, 6.0),
                ("apiaca", 5.0, 3.0),
                ("presidente kennedy", 9.0, 3.0),
                ("marataizes", 11.0, 4.0),
                ("rio novo do sul", 10.0, 5.0),
                ("vargem alta", 9.0, 7.0),
                ("castelo", 7.0, 7.0),
                ("venda nova", 7.0, 9.0),
                ("ibatiba", 4.0, 10.0),
                ("afonso claudio", 6.0, 11.0),
		("domingos martins", 11.0, 9.0),
		("viana", 13.0, 9.0),
		("serra", 14.0, 10.0),
		("fundao", 12.0, 11.0),
		("itarana", 10.0, 12.0),
		("baixo guandu", 9.0, 15.0),
		("colatina", 12.0, 15.0),
		("linhares", 16.0, 16.0),
		("rio bananal", 14.0, 17.0),
		("alto rio novo", 10.0, 19.0),
		("mantenopolis", 9.0, 20.0),
		("jaguare", 18.0, 20.0),
		("nova venecia", 15.0, 21.0),
		("agua doce do norte", 10.0, 23.0),
		("ecoporanga", 12.0, 24.0),
		("boa esperanca", 16.0, 23.0),
		("sao mateus", 19.0, 21.0),
		("conceicao da barra", 24.0, 22.0),
		("pedro canario", 18.0, 25.0),
		("montanha", 15.0, 26.0)]

-- lista de diárias cobradas em cada cidade:
diarias = [50.0, 55.0, 60.0, 45.0, 70.0, 30.0, 90.0, 75.0, 80.0, 30.0, 50.0, 55.0, 60.0, 45.0, 70.0, 30.0, 60.0, 75.0, 80.0, 40.0, 50.0, 55.0, 60.0, 45.0, 70.0, 60.0, 90.0, 75.0, 80.0, 90.0]

-- lista dos custos associados a cada cidade, por kilometragem
custos = [[0.00, 0.01, 0.10, 0.25, 0.07, 0.08, 0.12, 0.10, 0.12, 0.83, 0.54, 0.44, 0.70, 0.30, 0.22, 0.82, 0.73, 0.40, 0.56, 0.76, 0.23, 0.52, 0.21, 0.38, 0.12, 0.40, 0.93, 0.40, 0.21, 0.32],
 	  [0.01, 0.00, 0.10, 0.08, 0.39, 0.66, 0.47, 0.32, 0.07, 0.06, 0.49, 0.10, 0.40, 0.63, 0.30, 0.65, 0.89, 0.03, 0.64, 0.76, 0.46, 0.40, 0.59, 0.62, 0.14, 0.83, 0.80, 0.87, 0.55, 0.08],
	  [0.10, 0.10, 0.00, 0.24, 0.24, 0.10, 0.47, 0.32, 0.60, 0.54, 0.32, 0.21, 0.60, 0.54, 0.06, 0.10, 0.37, 0.76, 0.87, 0.03, 0.10, 0.24, 0.97, 0.02, 0.21, 0.19, 0.59, 0.21, 0.77, 0.77],
 	  [0.25, 0.08, 0.24, 0.00, 0.41, 0.61, 0.10, 0.40, 0.22, 0.60, 0.10, 0.39, 0.71, 0.07, 0.06, 0.18, 0.05, 0.10, 0.34, 0.03, 0.12, 0.46, 0.46, 0.03, 0.02, 0.65, 0.79, 0.20, 0.14, 0.36],
 	  [0.07, 0.39, 0.24, 0.41, 0.00, 0.24, 0.61, 0.10, 0.81, 0.21, 0.12, 0.10, 0.40, 0.32, 0.10, 0.05, 0.20, 0.53, 0.65, 0.10, 0.03, 0.10, 0.76, 0.10, 0.10, 0.97, 0.36, 0.02, 0.54, 0.59],
 	  [0.08, 0.66, 0.10, 0.61, 0.24, 0.00, 0.10, 0.83, 0.83, 0.10, 0.83, 0.47, 0.83, 0.10, 0.10, 0.10, 0.54, 0.40, 0.18, 0.04, 0.10, 0.81, 0.23, 0.03, 0.26, 0.46, 0.20, 0.21, 0.12, 0.92],
 	  [0.12, 0.47, 0.47, 0.10, 0.61, 0.10, 0.00, 0.10, 0.24, 0.12, 0.47, 0.32, 0.62, 0.40, 0.83, 0.25, 0.43, 0.73, 0.21, 0.37, 0.15, 0.03, 0.12, 0.28, 0.72, 0.36, 0.44, 0.67, 0.10, 0.62],
 	  [0.10, 0.32, 0.32, 0.40, 0.10, 0.83, 0.10, 0.00, 0.16, 0.24, 0.10, 0.10, 0.07, 0.39, 0.24, 0.32, 0.81, 0.40, 0.63, 0.44, 0.18, 0.56, 0.42, 0.32, 0.81, 0.64, 0.97, 0.40, 0.42, 0.79],
 	  [0.12, 0.07, 0.60, 0.22, 0.81, 0.83, 0.24, 0.16, 0.00, 0.24, 0.07, 0.06, 0.10, 0.06, 0.32, 0.07, 0.43, 0.42, 0.21, 0.82, 0.18, 0.20, 0.56, 0.32, 0.12, 0.69, 0.60, 0.32, 0.52, 0.42],
 	  [0.83, 0.06, 0.54, 0.60, 0.21, 0.10, 0.12, 0.24, 0.24, 0.00, 0.39, 0.28, 0.06, 0.10, 0.12, 0.10, 0.21, 0.18, 0.10, 0.94, 0.49, 0.10, 0.45, 0.65, 0.32, 0.62, 0.40, 0.10, 0.44, 0.49],
 	  [0.54, 0.49, 0.32, 0.10, 0.12, 0.83, 0.47, 0.10, 0.07, 0.39, 0.00, 0.10, 0.16, 0.24, 0.16, 0.32, 0.08, 0.60, 0.54, 0.05, 0.18, 0.04, 0.65, 0.04, 0.03, 0.87, 0.42, 0.38, 0.46, 0.46],
	  [0.44, 0.10, 0.21, 0.39, 0.10, 0.47, 0.32, 0.10, 0.06, 0.28, 0.10, 0.00, 0.41, 0.24, 0.24, 0.21, 0.08, 0.62, 0.06, 0.44, 0.70, 0.08, 0.17, 0.32, 0.03, 0.32, 0.42, 0.03, 0.76, 0.12],
	  [0.70, 0.40, 0.60, 0.71, 0.40, 0.83, 0.62, 0.07, 0.10, 0.06, 0.16, 0.41, 0.00, 0.24, 0.47, 0.07, 0.39, 0.32, 0.10, 0.85, 0.18, 0.77, 0.05, 0.60, 0.14, 0.15, 0.08, 0.62, 0.52, 0.03],
	  [0.30, 0.63, 0.54, 0.07, 0.32, 0.10, 0.40, 0.39, 0.06, 0.10, 0.24, 0.24, 0.24, 0.00, 0.24, 0.10, 0.10, 0.40, 0.32, 0.25, 0.49, 0.82, 0.44, 0.17, 0.10, 0.65, 0.21, 0.28, 0.23, 0.30],
	  [0.22, 0.30, 0.06, 0.06, 0.10, 0.10, 0.83, 0.24, 0.32, 0.12, 0.16, 0.24, 0.47, 0.24, 0.00, 0.16, 0.61, 0.21, 0.40, 0.10, 0.06, 0.31, 0.30, 0.10, 0.17, 0.53, 0.73, 0.20, 0.26, 0.87],
	  [0.82, 0.65, 0.10, 0.18, 0.05, 0.10, 0.25, 0.32, 0.07, 0.10, 0.32, 0.21, 0.07, 0.10, 0.16, 0.00, 0.10, 0.07, 0.39, 0.12, 0.10, 0.30, 0.49, 0.06, 0.49, 0.63, 0.66, 0.55, 0.45, 0.53],
	  [0.73, 0.89, 0.37, 0.05, 0.20, 0.54, 0.43, 0.81, 0.43, 0.21, 0.08, 0.08, 0.39, 0.10, 0.61, 0.10, 0.00, 0.12, 0.83, 0.47, 0.83, 0.81, 0.71, 0.25, 0.10, 0.94, 0.22, 0.89, 0.66, 0.40],
	  [0.40, 0.03, 0.76, 0.10, 0.53, 0.40, 0.73, 0.40, 0.42, 0.18, 0.60, 0.62, 0.32, 0.40, 0.21, 0.07, 0.12, 0.00, 0.24, 0.71, 0.06, 0.47, 0.10, 0.22, 0.94, 0.10, 0.83, 0.10, 0.22, 0.05],
	  [0.56, 0.64, 0.87, 0.34, 0.65, 0.18, 0.21, 0.63, 0.21, 0.10, 0.54, 0.06, 0.10, 0.32, 0.40, 0.39, 0.83, 0.24, 0.00, 0.47, 0.83, 0.10, 0.12, 0.21, 0.28, 0.32, 0.40, 0.18, 0.94, 0.06],
	  [0.76, 0.76, 0.03, 0.03, 0.10, 0.04, 0.37, 0.44, 0.82, 0.94, 0.05, 0.44, 0.85, 0.25, 0.10, 0.12, 0.47, 0.71, 0.47, 0.00, 0.41, 0.06, 0.39, 0.10, 0.39, 0.21, 0.22, 0.32, 0.10, 0.60],
	  [0.23, 0.46, 0.10, 0.12, 0.03, 0.10, 0.15, 0.18, 0.18, 0.49, 0.18, 0.70, 0.18, 0.49, 0.06, 0.10, 0.83, 0.06, 0.83, 0.41, 0.00, 0.10, 0.08, 0.16, 0.10, 0.62, 0.05, 0.13, 0.30, 0.49],
	  [0.52, 0.40, 0.24, 0.46, 0.10, 0.81, 0.03, 0.56, 0.20, 0.10, 0.04, 0.08, 0.77, 0.82, 0.31, 0.30, 0.81, 0.47, 0.10, 0.06, 0.10, 0.00, 0.16, 0.54, 0.21, 0.61, 0.41, 0.32, 0.10, 0.71],
	  [0.21, 0.59, 0.97, 0.46, 0.76, 0.23, 0.12, 0.42, 0.56, 0.45, 0.65, 0.17, 0.05, 0.44, 0.30, 0.49, 0.71, 0.10, 0.12, 0.39, 0.08, 0.16, 0.00, 0.39, 0.24, 0.24, 0.10, 0.06, 0.10, 0.10],
	  [0.38, 0.62, 0.02, 0.03, 0.10, 0.03, 0.28, 0.32, 0.32, 0.65, 0.04, 0.32, 0.60, 0.17, 0.10, 0.06, 0.25, 0.22, 0.21, 0.10, 0.16, 0.54, 0.39, 0.00, 0.24, 0.10, 0.22, 0.04, 0.25, 0.83],
	  [0.12, 0.14, 0.21, 0.02, 0.10, 0.26, 0.72, 0.81, 0.12, 0.32, 0.03, 0.03, 0.14, 0.10, 0.17, 0.49, 0.10, 0.94, 0.28, 0.39, 0.10, 0.21, 0.24, 0.24, 0.00, 0.12, 0.62, 0.17, 0.08, 0.61],
	  [0.40, 0.83, 0.19, 0.65, 0.97, 0.46, 0.36, 0.64, 0.69, 0.62, 0.87, 0.32, 0.15, 0.65, 0.53, 0.63, 0.94, 0.10, 0.32, 0.21, 0.62, 0.61, 0.24, 0.10, 0.12, 0.00, 0.61, 0.06, 0.83, 0.16],
	  [0.93, 0.80, 0.59, 0.79, 0.36, 0.20, 0.44, 0.97, 0.60, 0.40, 0.42, 0.42, 0.08, 0.21, 0.73, 0.66, 0.22, 0.83, 0.40, 0.22, 0.05, 0.41, 0.10, 0.22, 0.62, 0.61, 0.00, 0.10, 0.12, 0.40],
	  [0.40, 0.87, 0.21, 0.20, 0.02, 0.21, 0.67, 0.40, 0.32, 0.10, 0.38, 0.03, 0.62, 0.28, 0.20, 0.55, 0.89, 0.10, 0.18, 0.32, 0.13, 0.32, 0.06, 0.04, 0.17, 0.06, 0.10, 0.00, 0.71, 0.85],
	  [0.21, 0.55, 0.77, 0.14, 0.54, 0.12, 0.10, 0.42, 0.52, 0.44, 0.46, 0.76, 0.52, 0.23, 0.26, 0.45, 0.66, 0.22, 0.94, 0.10, 0.30, 0.10, 0.10, 0.25, 0.08, 0.83, 0.12, 0.71, 0.00, 0.16],
	  [0.32, 0.08, 0.77, 0.36, 0.59, 0.92, 0.62, 0.79, 0.42, 0.49, 0.46, 0.12, 0.03, 0.30, 0.87, 0.53, 0.40, 0.05, 0.06, 0.60, 0.49, 0.71, 0.10, 0.83, 0.61, 0.16, 0.40, 0.85, 0.16, 0.00]]

-- grafo de ligação entre cidades do ES

grafo_es :: [(Int,Int)]

grafo_es = [(1,2), (1,7), (1,9),
            (2,3), (2,7), 
            (3,4), (3,7), 
            (4,5), (4,11), 
            (5,6),  
            (6,7), (6,11), 
            (7,8), 
            (8,10),(8,11), (8,15), 
            (9,10), 
            (10,15), 
            (11,12), 
            (12,13), 
            (13,14),
            (14,15),
            (15,16), (15,17),
            (16,17), (16,20),
            (17,18), (17,19),
            (18,19), (18,22),
            (19,20), (19,23),
            (20,21), (20,25),
            (21,24), 
            (22,23),(22,27),
            (23,26),
            (24,25),
            (25,26), (25,30),
            (26,27), (26,29),
            (27,28), 
            (28,29),
            (29,30)]

-- fim de constantes fornecidas no exercicio

-- inicio do script

-- "atalhos" para acesso a partes da constante "nome_coord"
nome_cidade :: ([Char],Double,Double) -> [Char]
nome_cidade (a,b,c) = a

coord_cidade :: ([Char],Double,Double) -> (Double,Double)
coord_cidade (a,b,c) = (b,c)

-- funcoes auxiliares questao 2A
dist p1 p2 = sqrt ( ((fst p2) - (fst p1))^2 + ((snd p2) - (snd p1))^2 )

grafo_contem_tupla grafo (a,b) = [ x | x <- grafo, a == fst x && b == snd x ] /= []

distancia_cidades i j coords = dist a b
	where
		a = coord_cidade (coords!!(i - 1))
		b = coord_cidade (coords!!(j - 1))

distancia_cidades_adjacentes i grafo coords = [ if grafo_contem_tupla grafo (i,j) then distancia_cidades i j coords 
					else if grafo_contem_tupla grafo (j,i) then distancia_cidades j i coords
					else 0 | j <- [1..30] ]

-- funcao questao 2A
distancias grafo coords = [ distancia_cidades_adjacentes i grafo coords | i <- [1..30] ]

-- funcoes auxiliares questao 2B
calcula_custo i j grafo coords custos diarias = if (dists!!i!!j) == 0
						then 0
						else custos!!i!!j * dists!!i!!j + diarias!!j
						where
							dists = distancias grafo coords

custo_cidade i grafo coords custos diarias = [ calcula_custo i j grafo coords custos diarias | j <- [0..29] ]

-- funcao questao 2B
custoTotal custos diarias grafo coords = [ custo_cidade i grafo coords custos diarias | i <- [0..29] ]

-- funcoes auxiliares questao 2C
menores_eixo_x :: ([Char],Double,Double) -> [([Char],Double,Double)] -> [([Char],Double,Double)]
menores_eixo_x (nome,x,y) xs = [ (a,b,c) | (a,b,c) <- xs, b < x ]

menor_eixo_x :: [([Char],Double,Double)] -> ([Char],Double,Double)
menor_eixo_x xs = head [ (a,b,c) | (a,b,c) <- xs, menores_eixo_x (a,b,c) xs == [] ]

menores_eixo_y (nome,x,y) xs = [ (a,b,c) | (a,b,c) <- xs, c < y ]

menor_eixo_y xs = head [ (a,b,c) | (a,b,c) <- xs, menores_eixo_y (a,b,c) xs == [] ]

maiores_eixo_x (nome,x,y) xs = [ (a,b,c) | (a,b,c) <- xs, b > x ]

maior_eixo_x xs = head [ (a,b,c) | (a,b,c) <- xs, maiores_eixo_x (a,b,c) xs == [] ]

maiores_eixo_y (nome,x,y) xs = [ (a,b,c) | (a,b,c) <- xs, c > y ]

maior_eixo_y xs = head [ (a,b,c) | (a,b,c) <- xs, maiores_eixo_y (a,b,c) xs == [] ]

coordenadas_centro coords = (x,y)
	where
		maior_x = fst ( coord_cidade ( maior_eixo_x coords ) )
		menor_x = fst ( coord_cidade ( menor_eixo_x coords ) )
		maior_y = snd ( coord_cidade ( maior_eixo_y coords ) )
		menor_y = snd ( coord_cidade ( menor_eixo_y coords ) )
		x = ( maior_x + menor_x ) / 2
		y = ( maior_y + menor_y ) / 2

distancias_ponto_cidades ponto coords = [ (dist ponto (x,y), nome,x,y) | (nome,x,y) <- coords ]

menores_distancias (dist,nome,x,y) xs = [ (a,b,c,d) | (a,b,c,d) <- xs, a < dist ]

menor_distancia xs = head [ (nome,x,y) | (dist,nome,x,y) <- xs, menores_distancias (dist,nome,x,y) xs == [] ]

centro coords = menor_distancia ( distancias_ponto_cidades ( coordenadas_centro coords ) coords )

-- funcao questao 2C
extremoEcentro coords = ( nome_cidade (maior_eixo_y coords),
			nome_cidade (menor_eixo_y coords),
			nome_cidade (menor_eixo_x coords),
			nome_cidade (maior_eixo_x coords),
			nome_cidade (centro coords) )

-- funcoes auxiliares questao 2D
cidades_adjacentes i grafo coords = [ j | j <- [i..30], grafo_contem_tupla grafo (i,j) || grafo_contem_tupla grafo (j,i) ]
cidade_adjacente_mais_proxima i grafo coords = menor_distancia [ ( dist (coord_cidade (coords!!(i-1))) (coord_cidade (coords!!(j-1))),
									nome_cidade (coords!!(j-1)),
									fst ( coord_cidade (coords!!(j-1)) ),
									snd ( coord_cidade (coords!!(j-1)) ) ) | j <- cidades_adjacentes i grafo coords ]

indice_cidade :: ([Char],Double,Double) -> [([Char],Double,Double)] -> Int
indice_cidade (nome,x,y) coords = head [ i+1 | i <- [0..29], (nome,x,y) == coords!!i ]

caminho :: Int -> Int -> [(Int,Int)] -> [([Char],Double,Double)] -> [Int]
caminho a b grafo coords = if a > b then [0] -- error "Nao eh possivel chegar a este destino usando as regras definidas"
	else if a == b then
		[b]
	else
		[a] ++ caminho (proxima_cidade) b grafo coords
	where
		proxima_cidade = indice_cidade ( cidade_adjacente_mais_proxima a grafo coords ) coords

custo_caminho cidades grafo coords diarias custos = foldl (+) 0 [ matrix_custos!!((cidades!!i)-1)!!((cidades!!(i+1))-1) | i <- [0..(length(cidades)-2)] ]
	where
		matrix_custos = custoTotal custos diarias grafo coords
				
-- funcao questao 2D
caminhoCompleto n grafo coords diarias custos = if last cidades == 0 then ([], 0, 0)
	else (cidades, distancia_total, custo_total)
	where
		cidades = caminho 1 n grafo coords
		custo_total = custo_caminho cidades grafo coords diarias custos
		distancia_total = foldl (+) 0 [ dist (coord_cidade (coords!!((cidades!!i)-1))) (coord_cidade (coords!!((cidades!!(i+1))-1))) | i <- [0..(length(cidades)-2)] ]

-- funcoes auxiliares questao 2E
todos_caminhos a grafo coords diarias custos = [ if last lista == 0 then [] else lista | lista <- [ caminho a i grafo coords | i <- [(a+1)..30] ] ]

qs_menores (custo_pivot,lista_pivot) xs = [ (custo,lista) | (custo,lista) <- xs, custo_pivot > custo ]

qs_maiores (custo_pivot,lista_pivot) xs = [ (custo,lista) | (custo,lista) <- xs, custo_pivot <= custo ]

quicksort_por_custo :: Ord a => [(a,lista)] -> [(a,lista)]
quicksort_por_custo [] = []
quicksort_por_custo (pivot:xs) = (quicksort_por_custo menores) ++ [pivot] ++ (quicksort_por_custo maiores)
	where
		menores = qs_menores pivot xs
		maiores = qs_maiores pivot xs

-- funcao questao 2E
custosCaminhos a grafo coords diarias custos = quicksort_por_custo [ ((custo_caminho lista grafo coords diarias custos), lista) | lista <- todos_caminhos a grafo coords diarias custos, lista /= []  ]
-- caminhos a grafo coords diarias custos = sort [ ((custo_caminho lista grafo coords diarias custos), lista) | lista <- todos_caminhos a grafo coords diarias custos ]

