# Introdução ao SQL - DataCamp

## Capítulo 1º

Vamos aprender as funções básicas: SELECT, FROM, LIMIT, SELECT DISTINCT e SELECT COUNT.

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

- Para selecionar todos os únicos valores da coluna de uma determinada tabela, usaremos:

SELECT DISTINCT language

FROM films;

- Para contar o número de linhas ou colunas:

SELECT COUNT(*) 

FROM people;

- Para contar o número informações nas linhas de uma coluna:

SELECT COUNT (idade)

FROM people;

- Para contar o número único de informações nas linhas:

SELECT COUNT (DISTINCT aniversario)

FROM people

## Capítulo 2º

Vamos aprender as funções WHERE, AND, OR.

- Para filtar valores númericos podemos usar:

SELECT *

FROM films

WHERE budget > 10000

- Também podemos filtrar texto:

SELECT title

FROM films

WHERE country = 'China'

- Para datas faremos:

SELECT name, birthdate

FROM people

WHERE birthdate = '1974-11-11'

- Se quisermos, filtrar mais de uma condição usamos o AND, mostra registro se todas as condições forem verdadeiras:

SELECT title

FROM films

WHERE release_year > 1994 AND 

release_year < 2000

- Para o OR, mostra um registro se pelo menos uma das condições for verdadeiras:

SELECT title, release_year

FROM films

WHERE releas_year >= 1990 

AND release < 2000

AND ( language = 'French' OR language = 'Spanish'

AND gross > 2000000




