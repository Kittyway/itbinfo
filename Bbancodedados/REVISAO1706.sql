SELECT CLIENTE.NOME,
     CLIENTE.CIDADE,
	 CLIENTE.ESTADO,
	 VENDA.DUPLIC, 
	 VENDA.VALOR
	 FROM CLIENTE JOIN VENDA 
	 ON CLIENTE.CODCLI = VENDA.CODCLI
	 ORDER BY CLIENTE. NOME

	 --QUESTAO DOIS
	 SELECT COUNT(ESTADO) AS QUANTIDADE, ESTADO AS ESTADO FROM CLIENTE 
	 GROUP BY CLIENTE.ESTADO

	 --QUESTAO TRES

  SELECT SUM(VENDA.VALOR),
  CLIENTE.ESTADO 
  FROM CLIENTE JOIN VENDA 
  ON CLIENTE.CODCLI = VENDA.CODCLI
  GROUP BY CLIENTE.ESTADO