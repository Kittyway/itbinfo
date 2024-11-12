/*
	Exerc�cios 04 - Jun��es
*/
USE VIRTUAL_FINAL;


-- 1- O que e jun��o de tabelas e quantas tabelas s�o necess�rias, no m�nimo, para estabelecer uma rela��o de jun��o?
� para pesqisar ate duas tabelas

-- 3- Por meio de jun��o listar os nomes, os estados, os n�meros das duplicatas 
-- e seus respectivos valores para todos os clientes residentes no estado de S�o Paulo.
SELECT CLIENTE.NOME,
CLIENTE.ESTADO,
VENDA.DUPLIC,
VENDA.VALOR 
FROM CLIENTE JOIN VENDA 
ON (CLIENTE.CODCLI = VENDA.CODCLI)
WHERE CLIENTE.ESTADO = 'SP';

-- 4- Listar por meio de jun��o os t�tulos de carteira do cliente MICROS INFORMATICA S/A.
SELECT CLIENTE.NOME, VENDA.DUPLIC 
FROM CLIENTE JOIN VENDA ON (CLIENTE.CODCLI = VENDA.CODCLI)
WHERE CLIENTE.NOME = 'MICROS INFORMATICA S/A';

-- 5- Listar por meio de jun��o todos os nomes de todos os clientes que possuam t�tulos 
-- com vencimento no m�s de abril de qualquer ano.

SELECT CLIENTE.NOME, VENDA.VENCTO 
FROM CLIENTE JOIN VENDA ON (CLIENTE.CODCLI = VENDA.CODCLI)
WHERE MONTH(VENDA.VENCTO) = 4;


-- 6- Por meio de jun��o apresentar a quantidade de t�tulos agrupados por 
-- cliente para qualquer data de vencimento. Fazer o agrupamento dos nomes de clientes.
SELECT CLIENTE.NOME, COUNT(*) AS quantidade_de_titulos
FROM CLIENTE JOIN VENDA ON (CLIENTE.CODCLI = VENDA.CODCLI)
GROUP BY CLIENTE.NOME;


-- 7- Apresentar por meio de jun��o a quantidade de t�tulos agrupados por  
-- ordem de ano para qualquer vencimento.

SELECT YEAR(VENCTO) AS ano_vencimento,
COUNT(*) AS quantidade_de_titulos
FROM CLIENTE JOIN VENDA 
ON (CLIENTE.CODCLI = VENDA.CODCLI)
GROUP BY YEAR(VENDA.VENCTO)
ORDER BY YEAR(VENDA.VENCTO);

-- 8- Por meio de jun��o listar a quantidade de t�tulos agrupados por ordem de m�s 
-- e ano para qualquer vencimento.
SELECT YEAR(VENCTO) AS ANO, MONTH(VENCTO) AS MES,
COUNT(DUPLIC) AS TITULO FROM CLIENTE JOIN VENDA 
ON (CLIENTE.CODCLI = VENDA.CODCLI) 
GROUP BY MONTH(VENCTO), YEAR(VENCTO);

-- 9- Por meio de jun��o listar a quantidade de t�tulos e o valor total
--  agrupados por ordem de m�s e ano para qualquer vencimento.
SELECT COUNT(*) AS TITULO,
MONTH(VENCTO), YEAR(VENCTO), SUM(VALOR)
FROM CLIENTE JOIN VENDA 
ON (CLIENTE.CODCLI = VENDA.CODCLI) 
GROUP BY MONTH(VENCTO), YEAR(VENCTO);

-- 10- Por meio de jun��o apresentar os nomes, os valores e as datas de vencimento 
-- dos t�tulos em atraso entre 1� de janeiro de 2000 e 31 de dezembro de 2003.
-- Ordenar sem agrupamento a consulta por nome se cliente.
SELECT CLIENTE.NOME, VENDA.VALOR,
VENDA.VENCTO 
FROM CLIENTE JOIN VENDA 
ON (CLIENTE.CODCLI = VENDA.CODCLI) 
WHERE VENDA.VENCTO BETWEEN '20010101' AND '20031231'
ORDER BY CLIENTE.NOME