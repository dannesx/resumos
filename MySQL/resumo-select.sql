-- CREATE DATABASE
-- Cria um novo banco de dados
CREATE DATABASE meu_banco;

-- CREATE TABLE
-- Cria uma nova tabela
CREATE TABLE usuarios(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100)
);

-- SELECT
-- Consultar dados em uma tabela
SELECT * FROM usuarios;

-- WHERE
-- Filtrar consulta de registros com base em uma condição
SELECT * FROM usuarios
WHERE nome = 'João';

-- MIN()
-- Retorna o menor valor de uma coluna
SELECT MIN(idade) FROM usuarios;

-- MAX()
-- Retorna o maior valor de uma coluna
SELECT MAX(idade) FROM usuarios;

-- LIMIT
-- Limita o número de resultados de uma consulta
SELECT * FROM usuarios
LIMIT 5;

-- LIKE
-- Buscar um padrão específico em uma coluna
SELECT * FROM usuarios
WHERE nome LIKE 'João%';

-- Padrão 'A%': Começa com 'A'
-- Padrão '%a': Termina com 'a'
-- Padrão '%a%: Contém 'a'
-- Padrão 'A_': Tem duas letras, começa com 'A'
-- Padrão '_a': Tem duas letras, termina com 'a'
-- Padrão '_a_': Tem três letras, a segunda letra é 'a'

-- COUNT()
-- Conta o número de registros em uma coluna
SELECT COUNT(*) FROM usuarios;

-- AVG()
-- Calcula a média dos valores de uma coluna
SELECT AVG(idade) FROM usuarios;

-- SUM()
-- Soma os valores de uma coluna
SELECT SUM(idade) FROM usuarios;

-- YEAR()
-- Retorna o ano de uma data
SELECT YEAR(data_nascimento) FROM usuarios;

-- MONTH()
-- Retorna o mês de uma data
SELECT MONTH(data_nascimento) FROM usuarios;

-- DAY()
-- Retorna o dia de uma data
SELECT DAY(data_nascimento) FROM usuarios;

-- ORDER BY
-- Ordena os resultados de uma consulta
SELECT * FROM usuarios
ORDER BY nome ASC; -- OBS: ASC para ascendente e DESC para descendente

-- GROUP BY
-- Agrupa resultados baseados em uma ou mais colunas
SELECT idade, COUNT(*) FROM usuarios
GROUP BY idade;

-- DISTINCT
-- Retorna apenas valores distintos
SELECT DISTINCT nome FROM usuarios;