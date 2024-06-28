-- RESUMO CRUD
-- Create, Read, Update, Delete: 4 operações básicas de dados

-- === [C] CREATE ===
-- CREATE DATABASE
-- Cria um banco de dados
CREATE DATABASE meu_banco;

-- CREATE TABLE
-- Cria uma tabela
CREATE TABLE usuarios(
  id INT(4) PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  email VARCHAR(100)
);

-- INSERT INTO
-- Insere registros em uma tabela específica
INSERT INTO usuarios VALUES
(1, "Daniel", "daniel@email.com"),
(2, "Roberto", "robertinho@gmail.com"),
(3, "Anna Julia", "annaju@loshermanos.com.br");

-- DICA: Você pode utilizar o Mockaroo para gerar dados fictícios com IA

-- === [R] READ ===
-- SELECT
-- Seleciona dados de uma tabela
SELECT * FROM usuarios;

-- OBS: veja o resumo sobre SELECT para mais detalhes

-- === [U] UPDATE ===
-- UPDATE
-- Atualiza um campo de certo registro de uma tabela
UPDATE usuarios SET
nome = "Daniel Antunes"
WHERE id = 1;

-- OBS: UPDATE sem a cláusula WHERE irá atualizar TODOS os registros, não tem Ctrl+Z em SQL!!!

-- ALTER TABLE
-- Modifica uma tabela. ADD para adicionar, DROP para remover
ALTER TABLE usuarios
ADD COLUMN telefone VARCHAR(11);

ALTER TABLE usuarios
DROP COLUMN telefone;

-- === [D] DELETE ===
-- DELETE
-- Apaga um registro de uma tabela
DELETE FROM usuarios
WHERE id = 2;

-- OBS: DELETE sem a cláusula WHERE irá apagar TODOS os registros, não tem Ctrl+Z em SQL!!!

-- DROP TABLE
-- Apaga uma tabela
DROP TABLE usuarios;

-- DROP DATABASE
-- Apaga um banco de dados
DROP DATABASE meu_banco;