# 1) Dos usuarios cadastrados no banco de dados de amostra, retire um relatorio que:
#  a) Informe a idade do usuario :

SELECT Id, Name AS nome, YEAR(FROM_DAYS(TO_DAYS(now())-TO_DAYS(Birthday))) AS idade
FROM `user` u AS U;
    
# b) Quantos usuarios possuem a mesma idade :
   
SELECT YEAR(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(Birthday))) AS idade, COUNT(*) AS quantidade
FROM `user` u AS U
GROUP BY idade
ORDER BY idade ;

# 2) Identifique no banco de dados e retire uma lista de todos os projetos cadastrados na plataforma (plips) :

SELECT Name as projeto
FROM petition as P;

# 3) Retire uma lista de todos os projetos (tabela: petition) e sua quantidade de votos (tabela: votes) :

SELECT PT.IdPetition, PT.Name, COUNT(V.Id)
FROM vote AS V
JOIN petition AS PT
	ON PT.Id = V.PetitionId
WHERE PT.IdPetition = 1

# 4) Retire uma lista de todos os usuarios que possuem cadastro completo. (completo significa possuir CPF e Título de Eleitor (VoteIdCard))

SELECT Name , VoteIdCard , CPF
FROM `user` u2 
WHERE VoteIdCard <> ''
	AND  CPF <> '';

# 5) Dos usuarios com email completo, filtre aqueles que possuem e-mail

SELECT Id, Email
FROM profile p2 
WHERE Email LIKE '%@%';

# 6) Da lista acima, identifique apenas os usuarios do Rio de Janeiro

SELECT U.Id, P.Email, U.UF
FROM user AS U
JOIN profile AS P
	ON U.Id = P.ProfileId
WHERE Email LIKE '%@%'
AND U.UF = 'RJ';
