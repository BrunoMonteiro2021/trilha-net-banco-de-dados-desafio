--1
SELECT Nome, Ano FROM FILMES;

--2
SELECT * FROM Filmes ORDER BY ANO ASC;

--3
SELECT * FROM Filmes where nome = 'De Volta para o Futuro';

--4
SELECT * FROM FILMES WHERE ANO = 1997;

--5
SELECT * FROM FILMES WHERE ANO > 2000;

--6
SELECT * FROM FILMES WHERE Duracao > 100 AND Duracao < 150 ORDER BY DURACAO ASC;

--7
SELECT ano, COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

--8
select * from Atores where Genero = 'M';

--9
select * from Atores where Genero = 'F' order by PrimeiroNome asc;

--10
SELECT f.nome, g.Genero
FROM filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.idGenero = g.id;

--11
SELECT f.nome, g.Genero
FROM filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.idGenero = g.id
WHERE g.Genero = 'Mistério';

--12
SELECT f.nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM filmes f
JOIN ElencoFilme ef ON f.id = ef.idFilme
JOIN Atores a ON ef.idAtor = a.id;
