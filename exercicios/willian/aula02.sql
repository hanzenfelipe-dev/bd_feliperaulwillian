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

ALTER TABLE emprestimo
ADD COLUMN 


-- ex4


-- ex5


-- ex6
