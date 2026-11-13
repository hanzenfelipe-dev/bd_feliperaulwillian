-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1
CREATE TABLE livro(
    id INTEGER PRIMARY KEY,
    titulo VARCHAR(250) NOT NULL,
    autor VARCHAR(250) NOT NULL,
    ano INTEGER,
    exemplares INTEGER NOT NULL DEFAULT 1
);

-- ex2
CREATE TABLE leitor(
    id INTEGER,
    nome VARCHAR(250) NOT NULL,
);
INSERT INTO leitor (id, nome)
VALUES (01, 'vetor')

INSERT INTO leitor (id, nome)
VALUES (02, 'carlinhos')

INSERT INTO leitor (id, nome)
VALUES (03, 'julia')

ALTER TABLE leitor
ADD telefone VARCHAR(250),

SELECT * FROM leitor


-- ex3
CREATE TABLE  emprestimo(
    id INTEGER PRIMARY KEY,
    id_livro INTEGER NOT NULL,
);

INSERT INTO emprestimo (id, id_livro) VALUES (1, 101),
INSERT INTO emprestimo (id, id_livro) VALUES (2, 102),

ALTER TABLE EMPRESTIMO 
ADD COLUMN situacao TEXT NOT NULL DEFAULT 'finalizado',
-- ex4
CREATE TABLE editora(
    id INTEGER  PRIMARY KEY,
    nm TEXT
);

ALTER TABLE editora(
    RENAME COLUMN nm TO nome,
)
-- ex5
CREATE TABLE rascunho(
    id INTEGER PRIMARY KEY,
    texto TEXT (250),
)

INSERT INTO rascunho (id, texto) VALUES (1, ramelt)
INSERT INTO rascunho (id, texto) VALUES (2, tomeu e julia)
INSERT INTO rascunho (id, texto) VALUES (3, cinquenta tons de prata)

DELETE FROM rascunho (texto) VALUES (ramelt, tomeu e julia, cinquenta tons de prata)

SELECT * FROM rascunho;

DROP TABLE rascunho;

-- ex6 
CREATE TABLE livro(
id INTEGER PRIMARY KEY,
titulo TEXT (250),
);

CREATE TABLE leitor(
    id INTEGER PRIMARY KEY,
    nome TEXT (250),
);

CREATE TABLE emprestimo(
    id_livro INTEGER NOT NULL,
    id_leitor INTEGER NOT NULL,
);