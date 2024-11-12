CREATE DATABASE EDUCATECH;

USE EDUCATECH;

CREATE TABLE instrutor(
idinstrutor INT PRIMARY KEY,
RG INT,
NOME VARCHAR(51),
nascimento DATE,
titulacao INT
);

CREATE TABLE telefone_instrutor (
idtelefone INT primary key,
numero INT,
tipo VARCHAR(45),
instrutor_idinstrutor INT
);

CREATE TABLE turma (
idturma INT,
horario TIME,
duracao INT,
datainicio DATE,
atividade_idatividade INT,
instrutor_idinstrutor INT
);

CREATE TABLE aluno (
codMatricula INT,
turma_idturma INT,
dataMatricula DATE,
nome VARCHAR(45),
endereco TEXT,
telefone INT,
dataNasimento DATE,
altura FLOAT,
peso INT
);


--drop table matricula --> Excluir tabela matricula


CREATE TABLE matricula (
aluno_codMatricula INT NOT NULL, 
turma_idturma INT NOT NULL,
CONSTRAINT pk_matricula
PRIMARY KEY (aluno_codMatricula, turma_idturma)
);
DROP TABLE atividade
CREATE TABLE atividade(
idatividade INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE chamada (
idchamada INT,
data DATE,
presente BIT,
matricula_aluno_codMatricula INT,
matricula_turma_idturma INT
);

ALTER TABLE telefone_instrutor
ADD CONSTRAINT FK_TELEFONE_INSTRUTOR
FOREIGN KEY (instrutor_idinstrutor)
REFERENCES instrutor (idinstrutor)

ALTER TABLE turma_instrutor
ADD CONSTRAINT FK_TRMA_INSTRUTOR
FOREIGN KEY (INSTRUTOR_IDINSTRUTOR)
REFERENCES INSTRUTOR (IDINSTRUTOR)

ALTER TABLE TURMA
ADD CONSTRAINT FK_TURMA_ATIVIDADE
FOREIGN KEY (ATIVIDADE_IDATIVIDADE)
REFERENCES ATIVIDADE (IDATIVIDADE)

ALTER TABLE ALUNO
ADD CONSTRAINT FK_ALUNO_TURMA
FOREIGN KEY (TURMA_IDTURMA)
REFERENCES TURMA (IDTURMA)

ALTER TABLE matricula
ADD CONSTRAINT fk_turma_matricula
FOREIGN KEY (turma_idturma)
references turma (idturma)
