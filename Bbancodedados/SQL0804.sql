
/*
Exerc�cios 03 - FUN��ES SQL
MIF2AN
*/

/* 1. Quais s�o as quatro categorias de fun��es SQL? */
agrega��o, num�ricas, data e hora, string


/* 2. Qual categoria de fun��o � ideal para fazer c�lculos matem�ticos? */
numericas

/* 3. Qual categoria de fun��o � ideal para realizar opera��es estat�sticas? */
Agrega��o


/* 4. Quais fun��es de agrega��o voc� conhece? */
sum, avg, min, max, count


/* 5. Quais fun��es de data e hora voc� conhece? */
year, month, day, getdate, 
datepart, datediff, datename, dateadd


/* 6. Quais fun��es num�ricas voc� conhece? */
power, sqrt, pi, sin,cos,tan, abs, round, asin


/* 7. Quais fun��es string voc� conhece? */
left, right, upper, lower, len


/* 8. Qual � o n�mero m�dio de filhos por funcion�rio da empresa? */
SELECT AVG(FILHOS) FROM CADFUN


/* 9. Qual � o n�mero m�dio de filhos por funcion�rio da empresa que pertence ao departamento 5? */
SELECT AVG(FILHOS) FROM CADFUN WHERE DEPTO = 5

/* 10. Qual � o valor de sal�rios pagos aos funcion�rios do departamento 5? */
SELECT SALARIO FROM CADFUN WHERE DEPTO = 5


/* 11. Quantos funcion�rios est�o no departamento 5? */
SELECT COUNT(FUNCAO) FROM CADFUN WHERE DEPTO = 5


/* 12. Qual � o maior valor de sal�rio pago no departamento 5? */
SELECT MAX(SALARIO) FROM CADFUN WHERE DEPTO = 5


/* 13. Quanto a empresa paga para todos os analistas? */
SELECT SUM(SALARIO) FROM CADFUN WHERE FUNCAO = 'ANALISTA'


/* 14. Quanto a empresa paga para os analistas do departamento 2? */
SELECT SUM(SALARIO) FROM CADFUN WHERE FUNCAO = 'ANALISTA' AND DEPTO = '2'


/* 15. Listar os nomes de todos os funcion�rios admitidos no dia 10 de qualquer m�s*/
SELECT NOME, DAY(10) FROM CADFUN 


/* 16. Listar os nomes e as datas de admissao de todos os funcion�rios admitidos entre o dia 
5 e o dia 10 de qualquer m�s*/
SELECT NOME, ADMISSAO FROM CADFUN WHERE DAY(ADMISSAO) BETWEEN 5 AND 10


/* 17. Listar os nomes e as datas de admissao de todos os funcion�rios admitidos entre o dia 
5 e o dia 10 de qualquer m�s ordenado de forma ascendente por data*/
SELECT NOME, ADMISSAO FROM CADFUN 
WHERE DAY(ADMISSAO) BETWEEN 5 AND 10
ORDER BY ADMISSAO ASC


/* 18. Listar os nomes e as datas de admissao de todos os funcion�rios admitidos entre o dia 
5 e o dia 10 de qualquer m�s ordenado de forma descendente por data*/
SELECT NOME, ADMISSAO FROM CADFUN WHERE DAY(ADMISSAO) BETWEEN 5 AND 10
ORDER BY ADMISSAO DESC 


/* 19. Listar todos os funcion�rios admitidos antes do dia 20 de setembro de 2006*/
SELECT * FROM CADFUN WHERE ADMISSAO < '20-09-2006'  


/* 20. Listar os nomes, datas de admissao e os nomes dos meses de admiss�o de todos os 
funcion�rios do departamento 5*/
SELECT NOME, ADMISSAO, MONTH(ADMISSAO) FROM CADFUN WHERE DEPTO ='5' 


/* 21. Listar os nomes e os departamentos de todos os funcion�rios
em letras min�sculas dos departamentos 3 e 5 */ 
SELECT LOWER(NOME), DEPTO FROM CADFUN WHERE DEPTO IN (3,5)


/* 22. Listar os nomes, os departamentos e as datas de admiss�o de todos os funcion�rios
admitidos entre o dia 5 e o dia 10 de qualquer m�s dos departamentos 3 e 5*/ 
SELECT NOME, DEPTO, DAY(ADMISSAO)


/* 23. Listar os nomes, os departamentos, fun��es e as datas de admiss�o de todos os funcion�rios
admitidos entre o dia 1� e o dia 15 que sejam analistas*/ 
SELECT NOME, DEPTO, FUNCAO, ADMISSAO FROM CADFUN
WHERE FUNCAO = 'ANALISTA' AND DAY(ADMISSAO) BETWEEN 1 AND 15


/* 24. Listar os nomes, os departamentos, fun��es e as datas de admiss�o de todos os funcion�rios
admitidos entre os meses de maio e agosto de qualquer m�s que sejam analistas*/ 



/* 25. Listar os nomes, os departamentos, fun��es e as datas de admiss�o de todos os funcion�rios
admitidos entre os meses de maio e agosto de qualquer m�s que n�o sejam analistas*/ 



/* 26. Quantos funcion�rios foram admitidos no m�s de julho?*/ 








