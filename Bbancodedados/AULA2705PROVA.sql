/*Atividade de Revisão de Bancos de Dados 
    Obs: Utilizar o Banco de Dados VIRTUAL_FINAL 
            para resolver as questões. */
 
 USE VIRTUAL_FINAL

/* 1 - Insira um campo chamado "GENERO" na tabela cadfun para armazenar 
o gênero (Masculino ou Feminino). 
    Esse campo deve armazenar apenas 1 caractere (M ou F).*/
	SELECT * FROM CADFUN
 
 ALTER TABLE CADFUN 
 ADD GENERO
 CHAR(1)
 CHECK (GENERO IN ('M', 'F'));
 
/* 2 - Atualize os registros dos funcionários abaixo:
    --> 'Ana Bastos' e 'Aparecida Silva' Atualizar Gênero para "F".  
    --> 'CARLOS BASTOS' e 'PAULO DA SILVA' Atualizar Gênero para "M".
    Obs. Comando UPDATE   */
 
 UPDATE CADFUN 
 SET GENERO = 'F'
 WHERE NOME IN ('ANA BASTOS', 'APARECIDA SILVA');

 UPDATE CADFUN 
 SET GENERO = 'M'
 WHERE NOME IN ('CARLOS BASTOS', 'PAULO DA SILVA');

    
 
 
/* 3 - Selecione o nome, função e salário da tabela cadfun, para todos
os funcionarios que ganham entre 1500 e 2000 reais. */


SELECT NOME, FUNCAO, SALARIO FROM CADFUN 
WHERE SALARIO BETWEEN 1500 AND 2000;
 
 
/* 4 - Selecione todas as duplicatas da tabela venda que 
possuem valores menores que 2000. Retorne o código e valor. */

 
SELECT DUPLIC, CODCLI FROM VENDA
WHERE VALOR < 2000;
 
 
/* 5 - Faça uma consulta que retorne todos os clientes que possuem a sigla LTDA 
no nome. Os nomes devem ser apresentados em ordem crescente. */
 
 SELECT NOME FROM CLIENTE
 WHERE NOME LIKE '%LTDA%'
 ORDER BY NOME ASC; 
 
/* 6 - Faça uma consulta que retorne todos os clientes do ESTADO de São Paulo,
ordenados por nome em ordem crescente. */
 
 SELECT NOME, ESTADO 
 FROM CLIENTE
 WHERE ESTADO = 'SP'
 ORDER BY NOME ASC;
 
/* 7 - Selecione o nome do cliente, número da duplicata e valor da duplicata,
 de todos os clientes. Utilizar o conceito de junção de tabelas.
*/

	SELECT 
		CLIENTE.NOME,
		VENDA.DUPLIC,
		VENDA.VALOR
	FROM CLIENTE JOIN VENDA	
		ON (CLIENTE.CODCLI = VENDA.CODCLI)
 
 
/* 8 - Selecione o nome do cliente, estado, cidade, número da duplicata e valor da duplicata,
 de todos os clientes que possuem duplicatas com valores acima de 2500. */
 
 SELECT * FROM CLIENTE
 SELECT * FROM VENDA 

 SELECT CLIENTE.NOME, 
 CLIENTE.ESTADO,
 CLIENTE.CIDADE,
 VENDA.DUPLIC,
 VENDA.VALOR 
 FROM CLIENTE JOIN VENDA 
 ON (CLIENTE.CODCLI = VENDA.CODCLI)
 WHERE VENDA.VALOR > 2500;


/* 9 - Faça um script que crie uma tabela de produtos com os campos: 
    CODIGO TIPO INT e DESCRICAO TIPO VARCHAR(50).  */
 
 CREATE TABLE PRODUTOS(
 CODIGO INT,
 DESCRICAO VARCHAR(50)
 );

    
/* 10 - Faça uma consulta que retorne todos os campos da tabela CADFUN 
para os funcionários que ganham acima de 1800 reais, sejam do departamento 2
e possuam menos de dois filhos. Ordene pelo nome do funcionário em ordem decrescente. */

SELECT  * FROM CADFUN
WHERE (SALARIO > 1800 AND DEPTO=2 AND FILHOS < 2)
ORDER BY NOME DESC;
