
/*
Exercícios 03 - FUNÇÕES SQL
MIF2AN
*/

/* 1. Quais são as quatro categorias de funções SQL? */
agregação, numéricas, data e hora, string


/* 2. Qual categoria de função é ideal para fazer cálculos matemáticos? */
numericas

/* 3. Qual categoria de função é ideal para realizar operações estatísticas? */
Agregação


/* 4. Quais funções de agregação você conhece? */
sum, avg, min, max, count


/* 5. Quais funções de data e hora você conhece? */
year, month, day, getdate, 
datepart, datediff, datename, dateadd


/* 6. Quais funções numéricas você conhece? */
power, sqrt, pi, sin,cos,tan, abs, round, asin


/* 7. Quais funções string você conhece? */
left, right, upper, lower, len


/* 8. Qual é o número médio de filhos por funcionário da empresa? */
SELECT AVG(FILHOS) FROM CADFUN


/* 9. Qual é o número médio de filhos por funcionário da empresa que pertence ao departamento 5? */
SELECT AVG(FILHOS) FROM CADFUN WHERE DEPTO = 5

/* 10. Qual é o valor de salários pagos aos funcionários do departamento 5? */
SELECT SALARIO FROM CADFUN WHERE DEPTO = 5


/* 11. Quantos funcionários estão no departamento 5? */
SELECT COUNT(FUNCAO) FROM CADFUN WHERE DEPTO = 5


/* 12. Qual é o maior valor de salário pago no departamento 5? */
SELECT MAX(SALARIO) FROM CADFUN WHERE DEPTO = 5


/* 13. Quanto a empresa paga para todos os analistas? */
SELECT SUM(SALARIO) FROM CADFUN WHERE FUNCAO = 'ANALISTA'


/* 14. Quanto a empresa paga para os analistas do departamento 2? */
SELECT SUM(SALARIO) FROM CADFUN WHERE FUNCAO = 'ANALISTA' AND DEPTO = '2'


/* 15. Listar os nomes de todos os funcionários admitidos no dia 10 de qualquer mês*/
SELECT NOME, DAY(10) FROM CADFUN 


/* 16. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês*/
SELECT NOME, ADMISSAO FROM CADFUN WHERE DAY(ADMISSAO) BETWEEN 5 AND 10


/* 17. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês ordenado de forma ascendente por data*/
SELECT NOME, ADMISSAO FROM CADFUN 
WHERE DAY(ADMISSAO) BETWEEN 5 AND 10
ORDER BY ADMISSAO ASC


/* 18. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês ordenado de forma descendente por data*/
SELECT NOME, ADMISSAO FROM CADFUN WHERE DAY(ADMISSAO) BETWEEN 5 AND 10
ORDER BY ADMISSAO DESC 


/* 19. Listar todos os funcionários admitidos antes do dia 20 de setembro de 2006*/
SELECT * FROM CADFUN WHERE ADMISSAO < '20-09-2006'  


/* 20. Listar os nomes, datas de admissao e os nomes dos meses de admissão de todos os 
funcionários do departamento 5*/
SELECT NOME, ADMISSAO, MONTH(ADMISSAO) FROM CADFUN WHERE DEPTO ='5' 


/* 21. Listar os nomes e os departamentos de todos os funcionários
em letras minúsculas dos departamentos 3 e 5 */ 
SELECT LOWER(NOME), DEPTO FROM CADFUN WHERE DEPTO IN (3,5)


/* 22. Listar os nomes, os departamentos e as datas de admissão de todos os funcionários
admitidos entre o dia 5 e o dia 10 de qualquer mês dos departamentos 3 e 5*/ 
SELECT NOME, DEPTO, DAY(ADMISSAO)


/* 23. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre o dia 1º e o dia 15 que sejam analistas*/ 
SELECT NOME, DEPTO, FUNCAO, ADMISSAO FROM CADFUN
WHERE FUNCAO = 'ANALISTA' AND DAY(ADMISSAO) BETWEEN 1 AND 15


/* 24. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre os meses de maio e agosto de qualquer mês que sejam analistas*/ 



/* 25. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre os meses de maio e agosto de qualquer mês que não sejam analistas*/ 



/* 26. Quantos funcionários foram admitidos no mês de julho?*/ 








