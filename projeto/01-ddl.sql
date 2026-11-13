-- Projeto - 01 - DDL
-- Dono:willian
--
CREATE TABLE produto(
    id INTEGER PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    preco FLOAT,
    estoque INTEGER,
)

CREATE TABLE cliente(
    id INTEGER PRIMARY KEY,
    nome VARCHAR (255),
    cpf REAL,
    telefone REAL,
)

CREATE TABLE pedido(
    numero INTEGER PRIMARY KEY,
    datavend DATE,
    valor REAL,
)

CREATE TABLE funcionario(
    id INTEGER PRIMARY KEY,
    nome VARCHAR (255),
    cpf REAL,
    cargo VARCHAR (255) NOT NULL,
)

CREATE TABLE fornecedor(
    id INTEGER PRIMARY KEY,
    nome VARCHAR (255),
    CNPJ REAL,
    telefone REAL,
)

CREATE TABLE quantidade(
    id_produto INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
)