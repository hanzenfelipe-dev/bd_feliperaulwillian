-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1
CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    exemplares INTEGER NOT NULL DEFAULT 1
);



-- ex2
CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

INSERT INTO LEITOR (id, nome)
VALUES (1, 'Ana');

INSERT INTO LEITOR (id, nome)
VALUES (2, 'Joao');

INSERT INTO LEITOR (id, nome)
VALUES (3, 'Maria');

ALTER TABLE LEITOR
ADD COLUMN telefone TEXT;



-- ex3
CREATE TABLE INSCRICAO (
    id INTEGER PRIMARY KEY,
    aluno TEXT NOT NULL
);

INSERT INTO INSCRICAO (id, aluno)
VALUES (1, 'Ana');

INSERT INTO INSCRICAO (id, aluno)
VALUES (2, 'Joao');

INSERT INTO INSCRICAO (id, aluno)
VALUES (3, 'Maria');

ALTER TABLE INSCRICAO
ADD COLUMN autorizado_por TEXT NOT NULL DEFAULT 'nao informado';



-- ex4
CREATE TABLE EDITORA (
    id INTEGER PRIMARY KEY,
    nm TEXT NOT NULL
);

INSERT INTO EDITORA (id, nm)
VALUES (1, 'Abril');

ALTER TABLE EDITORA
RENAME COLUMN nm TO nome;



-- ex5
CREATE TABLE RASCUNHO (
    id INTEGER PRIMARY KEY,
    texto TEXT
);

INSERT INTO RASCUNHO (id, texto)
VALUES (1, 'teste');

DELETE FROM RASCUNHO;

DROP TABLE RASCUNHO;


-- ex6
CREATE TABLE ALUNO (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE CURSO (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE INSCRICAO (
    aluno_id INTEGER,
    curso_id INTEGER,
    data_inscricao DATE,
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES ALUNO(id),
    FOREIGN KEY (curso_id) REFERENCES CURSO(id)
);
