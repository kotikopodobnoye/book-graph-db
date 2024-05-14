use BookGraph

-- Match

-- 1. Выбор автора и его книг

SELECT Authors.FullName,
	Books.Title
FROM Authors
     , AuthorOf
     , Books
WHERE MATCH(Authors-(AuthorOf)->Books)
;

-- 2. Выбор жанра и соответсующих ему книг

SELECT 
	Genre.Title
	, Books.Title
FROM
	Genre
	, GenreOf
	, Books
WHERE MATCH(Genre-(GenreOf)->Books)
;

-- 3. Найти все книги, написанные автором "Лев Толстой", опубликованные в жанре "Исторический роман":

SELECT 
	Books.Title
	, Books.PublicationYear
FROM 
    Books,
    AuthorOf,
    Authors,
    GenreOf,
    Genre
WHERE MATCH(Authors-(AuthorOf)->Books<-(GenreOf)-Genre)
      AND Authors.FullName = N'Лев Толстой'
      AND Genre.Title = N'Исторический роман'

-- 4. Найти все книги, изданные издательством "Эксмо", опубликованные в жанре "Роман":
      
SELECT 
	Books.Title
	, Books.PublicationYear
FROM 
    Books,
    PublishedBy,
    Publishers,
    GenreOf,
    Genre
WHERE MATCH(Publishers<-(PublishedBy)-Books<-(GenreOf)-Genre)
      AND Publishers.Title = N'Эксмо'
      AND Genre.Title = N'Роман'
;

-- 5. Найти все книги, впервые изданные в период с 1800 по 1900 с жанром детектив

SELECT 
	Genre.Title
	, Books.Title
FROM
	Genre
	, GenreOf
	, Books
WHERE MATCH(Genre-(GenreOf)->Books)
		AND Books.PublicationYear >= 1800 AND Books.PublicationYear <= 1900
		AND Genre.Title = N'Детектив'
;

-- Shortest Path

-- Цепочка книг для "Войны и мир", у которых есть общий жанр (т.е. начиная с например Романа), до 2 элементов

SELECT Books1.Title AS BookTitle 
 , STRING_AGG(Books2.Title, ' -> ') WITHIN GROUP (GRAPH PATH) AS Books
 , STRING_AGG(Genre.Title, ' -> ') WITHIN GROUP (GRAPH PATH) AS 'Общие жанры'
FROM Books AS Books1
 , GenreOf FOR PATH AS gof1
 , Genre FOR PATH
 , GenreOf FOR PATH AS gof2
 , Books FOR PATH AS Books2
WHERE MATCH(SHORTEST_PATH(Books1(<-(gof1)-Genre-(gof2)->Books2){1,2}))
 AND Books1.Title = N'Война и мир';


-- Самый короткий путь между книгами

WITH T1 AS (
	SELECT Books1.Title AS BookTitle 
	 , STRING_AGG(Books2.Title, ' -> ') WITHIN GROUP (GRAPH PATH) AS Books
	 , STRING_AGG(Genre.Title, ' -> ') WITHIN GROUP (GRAPH PATH) AS Genres
	 , LAST_VALUE(Books2.Title) WITHIN GROUP (GRAPH PATH) AS
LastNode
	FROM Books AS Books1
	 , GenreOf FOR PATH AS gof1
	 , Genre FOR PATH
	 , GenreOf FOR PATH AS gof2
	 , Books FOR PATH AS Books2
	WHERE MATCH(SHORTEST_PATH(Books1(<-(gof1)-Genre-(gof2)->Books2)+))
	 AND Books1.Title = N'Война и мир'
)
SELECT BookTitle, Books,Genres, LastNode
FROM T1
WHERE LastNode = N'1984'

