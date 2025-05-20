	SELECT * FROM Filmes;

-- 1. Buscar o nome e ano dos filmes

	SELECT Nome, Ano From Filmes;

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

	SELECT Nome, Ano, Duracao From Filmes ORDER BY Ano ASC;

-- 3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

	SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lançados em 1997

	SELECT Nome, Ano, Duracao From Filmes WHERE Ano = 1997;

-- 5. Buscar os filmes lançados APÓS o ano 2000

	SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- 6. Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em or crescente

	SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 100 AND 150 ORDER BY Duracao ASC;

-- 7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duração em ordem decrescente

	SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8. Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

	SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

-- 9. Buscar os Atores do gênero femenino, retornando o PrimeiroNome, UltitoNome, e ordenando pelo PrimeiroNome

	SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10. Buscar o nome do Filme e o gênero

	SELECT F.Nome AS Filme, G.Genero FROM Filmes F
	JOIN FilmesGenero FG ON F.Id = FG.IdFilme
	JOIN Generos G ON FG.IdGenero = G.Id;

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"

	SELECT F.Nome, G.Genero
	From Filmes F
	JOIN FilmesGenero FG ON F.Id = FG.IdFilme
	JOIN Generos G ON FG.IdGenero = G.Id
	WHERE G.Genero = 'Mistério';

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e o seu Papel

	SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
	From Filmes F
	JOIN ElencoFilme EF ON F.Id = EF.IdFilme
	JOIN Atores A ON A.Id = EF.IdAtor;