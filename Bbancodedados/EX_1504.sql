/*
	Exercícios 004 - Revisão Comandos SQL e Consultas
*/

--1 – Escreva o comando para criação da tabela PRODUTO.
CREATE TABLE PRODUTO (
CD_PROD INT PRIMARY KEY,
DS_PROD VARCHAR(20),
VL_PROD DECIMAL (10,2),
QT_PROD INT 
);

--2 - Escreva os comandos para inserir os dados conforme mosntrado na figura da tabela Produto.
INSERT INTO PRODUTO VALUES (100, 'CAMISA POLO', 60.00, 12);
INSERT INTO PRODUTO VALUES (101, 'CAMISETA BASICA', 25.00, 8);
INSERT INTO PRODUTO VALUES (102, 'BERMIUDA JEANS', 50.00, 10);
INSERT INTO PRODUTO VALUES (103, 'MEIA SOCIAL', 15.00, 20);
INSERT INTO PRODUTO VALUES (104,'CAMISA MANGA CURTA', 45.99, 7);
INSERT INTO PRODUTO VALUES (105,'CAMISA MANGA LONGA', 70.00, 14);


--3 – Faça uma consulta que retorne os produtos que custam menos de R$ 50,00.
SELECT DS_PROD FROM PRODUTO WHERE VL_PROD < 50



--4 – Escreva a instrução SQL para alterar a descrição da “BERMUDA XPTO” para “BERMUDA JEANS”.
UPDATE PRODUTO SET DS_PROD = 'BERMUDA XPTO' WHERE DS_PROD = 'BERMUDA JEANS'



/*5 – Escreva a instrução SQL para cadastrar o produto abaixo:
Código = 106
Descrição = CALÇA JEANS
Valor = R$ 100,00
Quantidade = 15 */
INSERT INTO Produto 
VALUES (106, 'CALÇA JEANS', 100.00, 15);


--6 – Faça uma consulta que retorne o código, descrição e valor de qualquer registro que possua a palavra camisa.
SELECT CD_PROD, DS_PROD,VL_PROD FROM PRODUTO WHERE DS_PROD LIKE '%CAMISA%'



--7 – Faça uma consulta que retorne todos os campos dos registros que possuem códigos 101, 103 e 105.
SELECT * FROM PRODUTO WHERE CD_PROD IN (101, 103, 105)



--8 – Escreva o comando para exclusão do registro que possui código 104.
DELETE FROM PRODUTO WHERE CD_PROD = 104

