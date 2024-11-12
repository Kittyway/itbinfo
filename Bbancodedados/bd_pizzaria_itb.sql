USE master IF EXISTS(select * from sys.databases where name='bd_pizzaria_itb') 
DROP DATABASE bd_pizzaria_itb
GO 
-- CRIAR UM BANCO DE DADOS
CREATE DATABASE bd_pizzaria_itb
GO
-- ACESSAR O BANCO DE DADOS
USE bd_pizzaria_itb
GO

CREATE TABLE Usuario
( 
   id            INT			IDENTITY,
   nome          VARCHAR(100)	NOT NULL,
   email         VARCHAR(100)	UNIQUE NOT NULL,
   senha         VARCHAR(100)	NOT NULL,
   nivelAcesso   VARCHAR(10)    NULL, -- ADMIN ou USER
   foto			 VARBINARY(MAX) NULL,
   statusUsuario VARCHAR(20)    NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA

   PRIMARY KEY (id)
)
GO
-- 12345678 (base64) -> MTIzNDU2Nzg=
INSERT Usuario (nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES ('Fulano da Silva', 'fulano@email.com.br', 'MTIzNDU2Nzg=', 'ADMIN', NULL, 'ATIVO')
INSERT Usuario (nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES ('Beltrana de Sá', 'beltrana@email.com.br', 'MTIzNDU2Nzg=', 'USER', NULL, 'ATIVO')
INSERT Usuario (nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES ('Sicrana de Oliveira', 'sicrana@email.com.br', 'MTIzNDU2Nzg=', 'USER', NULL, 'INATIVO')
INSERT Usuario (nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES ('Ordnael Zurc', 'ordnael@email.com.br', 'MTIzNDU2Nzg=', 'USER', NULL, 'TROCAR_SENHA')
GO

CREATE TABLE Categoria
(
	id	 INT		  IDENTITY,
	nome VARCHAR(100) NOT NULL,  
	-- QUEIJO, FRANGO, CARNES & FRIOS, LEGUMES, DOCE, ESPECIAL, PEIXE...

	PRIMARY KEY(id)
)
GO
INSERT Categoria (nome) VALUES ('CARNES & FRIOS')
INSERT Categoria (nome) VALUES ('DOCE')
INSERT Categoria (nome) VALUES ('ESPECIAL')
INSERT Categoria (nome) VALUES ('FRANGO')
INSERT Categoria (nome) VALUES ('LEGUMES')
INSERT Categoria (nome) VALUES ('PEIXE')
INSERT Categoria (nome) VALUES ('QUEIJO')
INSERT Categoria (nome) VALUES ('REFRIGERANTES & SUCOS')
INSERT Categoria (nome) VALUES ('VINHO')
GO

CREATE TABLE Produto
(
	id			 INT		    IDENTITY,
	nome	     VARCHAR(100)	NOT NULL,
	descricao	 VARCHAR(400)	NOT NULL,
	codigoBarras VARCHAR(100)	NULL,
	foto		 VARBINARY(max) NULL,
	urlFoto		 VARCHAR(max)	NULL,
	preco		 DECIMAL(8,2)	NOT NULL,
	categoria_id INT			NOT NULL,
	statusProd	 VARCHAR(10)	NOT NULL, -- ATIVO ou INATIVO

	PRIMARY KEY (id),
	FOREIGN KEY (categoria_id) REFERENCES Categoria (id)
)
GO
INSERT Produto (nome, descricao, codigoBarras, foto, urlFoto, preco, categoria_id, statusProd) 
VALUES ('Muçarela', 'Base de molho de tomate com cobertura de muçarela, orégano e tomate', '0001', NULL, 'D:/Imagens/Imagens para Testes/pizza.png', 29.98, 7, 'ATIVO')
INSERT Produto (nome, descricao, codigoBarras, foto, urlFoto, preco, categoria_id, statusProd) 
VALUES ('Calabresa', 'Base de molho de tomate e queijo com cobertura de calabresa', '0002', NULL, NULL, 29.98, 1, 'ATIVO')
INSERT Produto (nome, descricao, codigoBarras, foto, urlFoto, preco, categoria_id, statusProd) 
VALUES ('Frango com Catupiry', 'Base de molho de tomate com cobertura de frango desfiado com catupiry', '0003', NULL, NULL, 37.98, 4, 'ATIVO')
INSERT Produto (nome, descricao, codigoBarras, foto, urlFoto, preco, categoria_id, statusProd) 
VALUES ('Marguerita', 'Base de molho de tomate com cobertura de muçarela, manjericão, orégano e tomate', '0004', NULL, NULL, 31.98, 7, 'ATIVO')
INSERT Produto (nome, descricao, codigoBarras, foto, urlFoto, preco, categoria_id, statusProd) 
VALUES ('Banana com Canela e Leite Condensado', 'Banana picada coberta com Canela em pó em uma base de Leite Condensado', '0005', NULL, NULL, 35.99, 2, 'ATIVO')
GO

CREATE TABLE Mensagem
(
	id	            INT			  IDENTITY,
	dataMensagem    SMALLDATETIME NOT NULL,
	remetente		VARCHAR(100)  NOT NULL,
	email 	        VARCHAR(100)  NOT NULL,
	telefone	    VARCHAR(20)       NULL,
	texto 	        VARCHAR(400)  NOT NULL,
	statusMensagem  VARCHAR(10)   NOT NULL, -- ATIVO ou INATIVO

	PRIMARY KEY (id)
)
GO
INSERT Mensagem (dataMensagem, remetente, email, telefone, texto, statusMensagem) 
VALUES (GETDATE(), 'Ordnael Zurc', 'ordnael@email.com', '(11) 98765-4123', 'Mensagem de teste', 'ATIVO')
INSERT Mensagem (dataMensagem, remetente, email, telefone, texto, statusMensagem) 
VALUES (GETDATE(), 'Maria Onete', 'maria@email.com', null, 'Segunda mensagem de teste', 'ATIVO')
GO

/*********************************/
/******* TABELAS OPCIONAIS *******/
/*********************************/
/*
/* TABELAS Pedido E ItemPedido APENAS PARA GERAR DASHBOARDS */
/******** ALIMENTADAS DIRETAMENTE NO BANCO DE DADOS ********/
CREATE TABLE Pedido
(
	id				INT				IDENTITY,
	dataPedido		SMALLDATETIME	NOT NULL,
	valorTotal		DECIMAL(8,2)	NOT NULL,
	obsPedido		VARCHAR(50)			NULL,
	usuario_id		INT				NOT NULL, -- Usuário que anotou o pedido
	statusPedido	VARCHAR(20)		NOT NULL, -- CONFIRMADO ou CANCELADO

	PRIMARY KEY (id),
	FOREIGN KEY (usuario_id) REFERENCES Usuario (id)
)
GO
CREATE TABLE ItemPedido
(
	id			INT			IDENTITY,
	pedido_id	INT			NOT NULL,
	produto_id	INT			NOT NULL,
	obsItem		VARCHAR(50)		NULL,
	quantidade	INT			NOT NULL, 
	statusItem	INT			NOT NULL, -- 1 = CONFIRMADO ou 0 = CANCELADO

	PRIMARY KEY (id),
	FOREIGN KEY (pedido_id) REFERENCES Pedido (id),
	FOREIGN KEY (produto_id) REFERENCES Produto (id)
)
GO

CREATE TABLE Promocao
(
	id				INT				IDENTITY,
	nomePromo		VARCHAR(50)		NOT NULL,
	descPromo 		VARCHAR(100)	NOT NULL,
	dataCadastro	SMALLDATETIME	NOT NULL,
	dataValidade	SMALLDATETIME		NULL,
	statusPromo		VARCHAR(10)		NOT NULL, -- ATIVO ou INATIVO

	PRIMARY KEY (id)
)
GO

CREATE TABLE ProdutoDestaque
(
	id			 INT		    IDENTITY,
	produto_id	 INT UNIQUE 	NOT NULL,
	dataCad		 SMALLDATETIME	NOT NULL,

	PRIMARY KEY (id),
	FOREIGN KEY (produto_id) REFERENCES Produto (id)
)
GO
INSERT ProdutoDestaque (produto_id, dataCad) 
VALUES (1, GETDATE())
INSERT ProdutoDestaque (produto_id, dataCad) 
VALUES (2, GETDATE())
INSERT ProdutoDestaque (produto_id, dataCad) 
VALUES (3, GETDATE())
GO

CREATE TABLE Cupom
(
	id			 INT		   IDENTITY,
	nome		 VARCHAR(30)   NOT NULL,
	descricao    VARCHAR(100)  NOT NULL,
	dataCad		 SMALLDATETIME NOT NULL,
	dataValidade SMALLDATETIME NOT NULL,
	qtdGerada	 INT		   NOT NULL,
	qtdUtilizada INT		   NOT NULL,
	statusCupom  VARCHAR(10)   NOT NULL, -- ATIVO, INATIVO, ESGOTADO ou EXPIRADO

	PRIMARY KEY (id)
)
GO
INSERT Cupom (nome, descricao, dataCad, dataValidade, qtdGerada, qtdUtilizada, statusCupom) 
VALUES ('TESTE10', 'Ganhe 10% de desconto na primeira compra', GETDATE(), DATEADD(DAY, 20, GETDATE()), 20, 0, 'ATIVO')

CREATE TABLE UsuarioCupom
(
	id			  INT		    IDENTITY,
	cupom_id	  INT 			NOT NULL,
	usuario_id	  INT 			NOT NULL,
	chave         VARCHAR(500)  NULL,
	dataGerado	  SMALLDATETIME	NOT NULL,
	dataUtilizado SMALLDATETIME	NULL,
	statusCupom   VARCHAR(10)	NOT NULL, -- ATIVO, INATIVO, UTILIZADO ou EXPIRADO

	PRIMARY KEY (id),
	FOREIGN KEY (cupom_id) REFERENCES Cupom (id),
	FOREIGN KEY (usuario_id) REFERENCES Usuario (id)
)
GO
INSERT UsuarioCupom (cupom_id, usuario_id, chave, dataGerado, dataUtilizado, statusCupom) 
VALUES (1, 2, '456789C1', GETDATE(), NULL, 'ATIVO')

/**** USAR CUPOM ****/
UPDATE Cupom
SET qtdUtilizada = qtdUtilizada + 1,
	qtdGerada = qtdGerada - 1
WHERE id = (SELECT cupom_id FROM UsuarioCupom WHERE chave = '456789C1')

UPDATE UsuarioCupom
SET statusCupom = 'UTILIZADO',
	dataUtilizado = GETDATE()
WHERE chave = '456789C1'
*/

SELECT * FROM Categoria
SELECT * FROM Produto
SELECT * FROM Usuario
SELECT * FROM Mensagem



