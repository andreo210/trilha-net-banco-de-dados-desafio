SELECT  [Nome] ,[Ano] FROM [Filmes].[dbo].[Filmes];

SELECT  [Nome] ,[Ano] FROM [Filmes].[dbo].[Filmes];

SELECT  [Nome] ,[Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] where Nome like'De volta para o Futuro';

SELECT  [Nome] ,[Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] where Ano like 1997;

SELECT  [Nome] ,[Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] where Ano > 2000

SELECT  [Nome] ,[Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] where Duracao > 100 AND  Duracao < 150;

SELECT   [Ano], COUNT (Ano) as Quantidade FROM [Filmes].[dbo].[Filmes] GROUP BY Ano ORDER BY Ano DESC

SELECT [Id]
      ,[PrimeiroNome]
      ,[UltimoNome]
      ,[Genero]
  FROM [Filmes].[dbo].[Atores] where  
  Id= (SELECT MIN(ID) FROM [Filmes].[dbo].[Atores] where Genero like 'm') 
   and
  Id= (SELECT Max(ID) FROM [Filmes].[dbo].[Atores] where Genero like 'm' )

  SELECT [Id]
      ,[PrimeiroNome]
      ,[UltimoNome]
      ,[Genero]
  FROM [Filmes].[dbo].[Atores] where  
  Id= (SELECT MIN(ID) FROM [Filmes].[dbo].[Atores] where Genero like 'f') 
   and
  Id= (SELECT Max(ID) FROM [Filmes].[dbo].[Atores] where Genero like 'f' ) ORDER BY [PrimeiroNome] DESC


  SELECT 
       [Nome]
	  ,Genero
  FROM (([Filmes].[dbo].[Filmes] INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme) INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id);


SELECT 
       [Nome]
	  ,Genero
  FROM (([Filmes].[dbo].[Filmes] INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme) INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id ) where Genero like 'Mistério';

  SELECT 
       Filmes.Nome as NomeFilme
	  ,Atores.PrimeiroNome
	  ,Atores.UltimoNome
	  ,ElencoFilme.Papel
  FROM 
(([Filmes].[dbo].[Filmes] INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme) INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor );
