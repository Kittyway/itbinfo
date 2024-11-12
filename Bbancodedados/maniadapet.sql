CREATE DATABASE MANIADEPET
USE MANIADEPET

SELECT * funcionarioVeterinario from MANIADEPET

CREATE TABLE FuncionarioVeterinario (
    FuncionarioID INT PRIMARY KEY IDENTITY(1,1),
    NomeCompleto VARCHAR(100),
    DataNascimento DATE,
    Genero VARCHAR(10),
    EnderecoResidencial VARCHAR(255),
    NumeroTelefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE InformacoesProfissionais (
    FuncionarioID INT PRIMARY KEY,
    CargoFuncao VARCHAR(100),
    DataAdmissao DATE,
    NumeroRegistroProfissional VARCHAR(50),
    Especializacoes TEXT,
    FOREIGN KEY (FuncionarioID) REFERENCES FuncionarioVeterinario(FuncionarioID)
);

*CREATE TABLE InformacoesPets (
    PetID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100),
    Especie VARCHAR(50),
    Raca VARCHAR(50),
    Cor VARCHAR(50),
    Sexo VARCHAR(10),
    DataNascimento DATE
);
CREATE TABLE Pets (
    pet_id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100),
    especie VARCHAR(50),
    raca VARCHAR(50),
    cor VARCHAR(50),
    sexo VARCHAR(10),
    data_nascimento DATE
);

CREATE TABLE InformacoesMedicas (
    info_id INT PRIMARY KEY IDENTITY(1,1),
    pet_id INT,
    historico_vacinacao TEXT,
    historico_doencas TEXT,
    medicamentos_prescritos TEXT,
    tratamentos_anteriores TEXT,
    alergias_conhecidas TEXT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);

CREATE TABLE InformacoesComportamentais (
    info_id INT PRIMARY KEY IDENTITY(1,1),
    pet_id INT,
    comportamento_alimentar TEXT,
    comportamento_social TEXT,
    comportamento_geral TEXT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);

CREATE TABLE InformacoesProprietarios (
    proprietario_id INT PRIMARY KEY IDENTITY(1,1),
    pet_id INT,
    nome_proprietario VARCHAR(100),
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(100),
    outros_membros_familia TEXT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);

CREATE TABLE AgendamentoVisitas (
    visita_id INT PRIMARY KEY IDENTITY(1,1),
    pet_id INT,
    data_visita DATE,
    tipo_visita VARCHAR(100),
    observacoes TEXT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);

CREATE TABLE InformacoesFinanceiras (
    financeiro_id INT PRIMARY KEY IDENTITY(1,1),
    pet_id INT,
    historico_pagamentos TEXT,
    plano_saude_veterinario VARCHAR(100),
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);

CREATE TABLE ImagensDocumentos (
    imagem_id INT PRIMARY KEY IDENTITY(1,1),
    pet_id INT,
    foto BLOB,
    documento TEXT,
    FOREIGN KEY (pet_id) REFERENCES Pets(pet_id)
);
