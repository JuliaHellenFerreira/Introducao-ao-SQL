# Introdução ao SQL - DataCamp

## Capítulo 1º

Para selecionar uma coluna de uma determinada tabela, faremos:

SELECT name

FROM films;

Para selecionar mais de uma coluna de uma determinada tabela:

SELECT name, age

FROM  people;

Para selecionar todas as colunas de uma determinada tabela: 

SELECT *

FROM people

Agora, para selecionar a coluna e limitar o número de resultados usamos LIMIT:

SELECT *

FROM people

LIMIT 10;

Para selecionar todos os únicos valores da coluna de uma determinada tabela, usaremos:

SELECT DISTINCT language

FROM films;

Para contar o número de linhas ou colunas:

SELECT COUNT(*) 

FROM people;

Para contar o número informações nas linhas de uma coluna:

SELECT COUNT (idade)

FROM people;

Para contar o número único de informações nas linhas:

SELECT COUNT (DISTINCT aniversario)

FROM people

## Capítulo 2º


