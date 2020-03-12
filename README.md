# Introdução ao SQL - DataCamp

## SELECT, FROM e LIMIT

- Para selecionar uma coluna de uma determinada tabela, faremos:

SELECT name
FROM films;

- Para selecionar mais de uma coluna de uma determinada tabela:

SELECT name, age
FROM  people;

- Para selecionar todas as colunas de uma determinada tabela: 

SELECT *
FROM people

- Agora, para selecionar a coluna e limitar o número de resultados usamos LIMIT:

SELECT *
FROM people
LIMIT 10;


