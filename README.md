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

Vamos aprender as funções WHERE, AND, OR, BETWEEN, WHERE IN, NULL, LIKE e NOT LIKE.

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

- Para filtrar valores númericos em um intervalo usamos o BETWEEN:

SELECT title, release_year

FROM films

WHERE release_year BETWEEN 1990 AND 2000

- Outro exemplo:

SELECT title, release_year

FROM films

WHERE release_year BETWEEN 1990 AND 2000

AND budget > 100000000

AND (language ='Spanish' OR language = 'French')

- Para filtrar informações em multiplos usaremos IN:

SELECT title, release_year

FROM films

WHERE release_year IN (1990, 2000)

- NULL representa a ausência ou um valor inválido. Podemos usar para checak a existência de dados:

SELECT name

FROM peolpe

WHERE deathdate IS NULL

- Exemplo com contagem:

SELECT COUNT (*)

FROM films

WHERE language IS NULL

- Se quisermos, filtrar partes de uma texto ou valor, usamos o LIKE:

SELECT name

FROM people

WHERE name LIKE 'B%'

- Quando queremos filtrar a segunda letra (LIKE) :

SELECT name

FROM people

WHERE name LIKE '_r%'

- Quando queremos filtrar os que não começam com A  LIKE) :

SELECT name

FROM people

WHERE name NOT LIKE 'A%'

## Capítulo 3º

Neste capítulo iremos realizar algumas contas. As funções para isso é: AVG, MAX, SUM, MIN, contas básicas e AS:

- Soma (SUM):

SELECT SUM (duration)

FROM films

- Média (AVG):

SELECT AVG (duration)

FROM films

- Mínino (MIN):

SELECT MIN ( duration )

FROM films

- Máximo ( MAX ):

SELECT MAX ( duration )

FROM films

- Vamos ver como usar essas funções junto com o WHERE:

SELECT AVG(gross)

FROM films

WHERE title LIKE 'A%'

- Também conseguimos realizar contas básicas:

SELECT (4 * 3) AS results

- Agora, se eu quero esses resultados organizados em uma coluna posso usar AS, vejamos:

SELECT title, (gross - budget) AS net_profit

FROM films

- Outra exemplo:

SELECT title, (duration / 60.0) AS duration_hours

FROM films

- Com outras funções:

SELECT AVG(duration) / 60.00 AS avg_duration_hours

FROM films

- Se quisermos, realizar mais operações matemáticas mas usando outras funções, podemos fazer:

SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead

FROM people

- Outro exemplo:

SELECT MAX(release_year) - MIN(release_year) AS difference

FROM films

- Vejamos de outra forma só que com decadas:

SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades

FROM films

## Capítulo 4º

Vamos aprender nesse último capítulo: ORDER BY,
 
- Para colocar em ordem alfabetica:

SELECT *

FROM people

ORDER BY name

- Exemplo:

SELECT *

FROM films

WHERE release_year <> 2015

ORDER BY duration

- Outro exemplo:

SELECT title, gross

FROM films

WHERE title LIKE 'M%'

ORDER BY title 

- Para colocar em ordem decrescente basta colocar DESC no final:

SELECT imdb_score, film_id

FROM reviews

ORDER BY imdb_score DESC

- Também podemos colocar em ordem mais de uma coluna:

SELECT birthdate, name

FROM people

ORDER BY birthdate, name

- Vamos aprender agora como usar o GROUP BY:

SELECT release_year, count (*)

FROM films

GROUP BY release_year

ORDER BY count DESC

- Vejamos mais exemplos:

SELECT release_year, AVG( duration )

FROM films

GROUP BY release_year

- O GROUP BY agrupa linhas baseado em semelhanças entre elas:

SELECT release_year, MAX(budget)

FROM films 

GROUP BY release_year

- Exemplo:

SELECT imdb_score, count(*)

FROM reviews

GROUP BY imdb_score

