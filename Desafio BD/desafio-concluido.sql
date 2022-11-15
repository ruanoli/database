--consulta 1
SELECT 
	Nome,
	Ano
FROM Filmes

--consulta 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano 

--consulta 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--consulta 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--consulta 5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--consulta 6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--consulta 7
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--consulta 8
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

--consulta 9
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--consulta 10
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--consulta 11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--consulta 12
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id