{--Daniel Favoreto,Programação I,Ciência da Computação, 05/07/2013 , lista 2 do exercicio 2--} 

--Questão 1
quadrante x y = if x == 0 && y == 0 
                 then "origem"
                 else if x>0 && y>0 --caso seja
                      then "Primeiro quadrante"
                      else if x<0 && y<0 --caso nao seja
                           then "terceiro quadrante"
                           else "segundo ou quarto quadrante" 
                           --fim 
--Inserindo valores para x e y, a função determina em qual quadrante 1º ou 3º se encontra o par de coordenadas.

--Questão 2
quadm a b c = if (a <= b && b <= c) || (b <= a && a <= c)
               -- c é o maior?
              then (succ c)^2
              else if (c <= a && a <= b) || (a <= c && c <= b)
                   -- b é o maior?
                   then (succ b)^2
                   -- c é o maior
                   else (succ a)^2
                   -- fim
--Dados valores a, b, c, a função tem o papel de computar qual é o maior valor e aplicar o seu sucessor ao quadrado.

--Questão 3
inte x = if (x >= 0 && x <= 100)
         then if (mod x 5 == 0) && (mod x 3 == 0)
              then "divisivel"
              else "nao divisivel"
         else "redefina numero"
--A função tem o papel de verificar se x pertence ao intervalo [0,100] e se é divisível por 3 e por 5.

--Questão 4
oux t f = if t==True && f ==True
          then False
          else t||f
--A função é definida para o Xor, ou seja, quando definidos duas sentenças iguais, retorna False.

--Questão 5
grato e f = if pre e f <= 0
            then 0
            else if pre e f >= 1 && pre e f <= 10
                 then 100
                 else if pre e f >= 11 && pre e f <= 20
                      then 200
                      else if pre e f >=21 && pre e f <= 30
                           then 300
                           else if pre e f >= 31 && pre e f <= 40
                                then 400
                                else 500
            where
            pre e f = -(2/3)*f + e 
--Dados as horas extras trabalhadas e horas faltosas, a função determina o valor do prêmio a ser concedido para o empregado.

--Questão 6
passagem v i | i <= 2    = pas1
             | i <= 10   = pas2
             | i >= 60   = pas3
             | otherwise = pas4
             where
                pas1 = 0.1* v
                pas2 = 0.5* v
                pas3 = 0.6* v
                pas4 = v
--Conhecidos o valor integral da passagem e idade, a função calcula qual o valor a ser pago pelo passageiro.

--Questão 10
idadeMedia (nome,idade) = (idade >=40) && (idade <=60)
--Caso a idade esteja no intervalo [40,60] a função retorna True, caso contrário, False.

--Questão 11
abaixoEstaturaMedia (nome,sexo,altura) = ((sexo == "f") && (altura < 1.61)) || ((sexo == "m") && (altura < 1.73)) 
--A partir de dados fornecidos pelo usuário, a função retorna True ou False.