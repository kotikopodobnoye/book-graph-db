use BookGraph
;

INSERT INTO Authors (FullName, Birthday) VALUES 
    (N'Лев Толстой', '1828-09-09'),
    (N'Фёдор Достоевский', '1821-11-11'),
    (N'Джоан Роулинг', '1965-07-31'),
    (N'Джордж Оруэлл', '1903-06-25'),
    (N'Дж. Р. Р. Толкин', '1892-01-03'),
    (N'Михаил Булгаков', '1891-05-15'),
    (N'Антуан де Сент-Экзюпери', '1900-06-29'),
    (N'Франк Герберт', '1920-10-08'),
    (N'Александр Дюма', '1802-07-24'),
    (N'Якуб Колас', '1882-11-03')
;


INSERT INTO Books (Title, PublicationYear, ISBNCode) VALUES
-- Лев Толстой
    (N'Война и мир', 1869, '978-5-699-22811-5'),
    (N'Анна Каренина', 1877, '978-5-17-115109-3'),
    
-- Федор Достоевский
    (N'Преступление и наказание', 1866, '978-5-699-34567-2'),
    (N'Игрок', 1866, '978-8-42-063549-1'),
    
-- Джоан Роулинг
    (N'Гарри Поттер и философский камень', 1997, '978-5-17-077687-5'),
    
-- Джордж Оруэлл
    (N'1984', 1949, '978-5-699-48713-4'),
    (N'Скотный двор', 1945, '978-5-389-20414-0'),
    
-- Дж. Р. Р. Толкин
    (N'Властелин колец', 1954, '978-5-389-00073-2'),
    
-- Михаил Булгаков
    (N'Мастер и Маргарита', 1967, '978-5-17-017806-8'),
    (N'Собачье сердце', 1925, '978-5-17-115274-1'),
    
-- Антуан де Сент-Экзюпери
    (N'Маленький принц', 1943, '978-5-17-080398-4'),
    (N'Цитадель', 1948, '978-5-04-159065-9'),
    
-- Франк Герберт
    (N'Дюна', 1965, '978-5-17-089667-2'),
    
-- Александр Дюма
    (N'Учитель фехтования', 1840, '978-5-17-158547-1'),
    (N'Королева Марго', 1845, '978-5-17-123288-7'),
    
-- Якуб Колас
    (N'Новая земля', 1923, '978-5-901124-62-8'),
    (N'Симон-Музыкант', 1925, '978-5-00025-112-6')
;


INSERT INTO Genre (Title, Description) VALUES
    (N'Роман', N'Произведение преимущественно художественной литературы широкого жанрового круга, в центре которого находятся человеческие отношения и внутренний мир героев.'),
    (N'Фэнтези', N'Жанр литературы, характеризующийся использованием мифологических, фантастических и волшебных элементов в сюжете и/или обстановке.'),
    (N'Фантастика', N'Жанр литературы, основанный на использовании научных, технологических и фантастических концепций и элементов.'),
    (N'Магический реализм', N'Жанр литературы, объединяющий реалистическое изображение мира с элементами магии, фантастики и сюрреализма.'),
    (N'Сатира', N'Жанр литературы или искусства, цель которого — критика, обличение или издевательство над человеческими недостатками, ошибками, пороками и недостаточно обоснованными чаяниями.'),
    (N'Философская сказка', N'Жанр литературы, в котором философские идеи и концепции выражаются через форму сказки.'),
	(N'Детектив', N'Жанр литературы, характеризующийся поиском и разгадыванием загадок и тайн.'),
    (N'Приключения', N'Жанр литературы, описывающий путешествия, опасные ситуации и неожиданные события.'),
    (N'Религиозная литература', N'Жанр литературы, посвящённый религиозным темам и вопросам духовного развития.'),
    (N'Драма', N'Жанр литературы, сосредотачивающийся на эмоциональном и психологическом развитии персонажей.'),
    (N'Классика', N'Жанр литературы, признанный классикой и имеющий высокую ценность в литературном наследии.'),
    (N'Научная фантастика', N'Жанр литературы, основанный на научных концепциях и представляющий вымышленные миры и технологии.'),
    (N'Биография', N'Жанр литературы, рассказывающий о жизни и деятельности реальных людей.'),
    (N'Исторический роман', N'Жанр литературы, события которого происходят в прошлом и основаны на исторических фактах.'),
    (N'Поэзия', N'Жанр литературы, в котором используется метрика и ритмика для выражения эмоций и мыслей автора.'),
    (N'Реализм', N'Жанр литературы, стремящийся к максимально достоверному отображению реальности, описание повседневной жизни, изображение обычных людей и критический анализ социальных явлений и проблем.'),
    (N'Антиутопия', N'Жанр литературы, описывающий вымышленные общества или миры, характеризующиеся крайними формами ужаса, утопические идеалы, часто приводящие к подавлению индивидуальности, тирании и социальной деградации.')
;

INSERT INTO Publishers (Title, Location) VALUES
    (N'Эксмо', 'Москва, Россия'),
    (N'АСТ', 'Москва, Россия'),
    (N'Bloomsbury', 'Лондон, Великобритания'),
    (N'Домино', 'Москва, Россия'),
    (N'HarperCollins', 'Нью-Йорк, США'),
    (N'Современник', 'Москва, Россия'),
    (N'Houghton Mifflin Harcourt', 'Бостон, США'),
    (N'Фолио', 'Москва, Россия'),
    (N'Chilton Books', 'Филадельфия, США'),
    (N'Ленинградка', 'Санкт-Петербург, Россия')
;

INSERT INTO AuthorOf ($from_id, $to_id)
VALUES
	((select $node_id from Authors WHERE AuthorId = 1), (select $node_id from Books  WHERE BookId = 1))
	, ((select $node_id from Authors WHERE AuthorId = 1), (select $node_id from Books  WHERE BookId = 2))
	, ((select $node_id from Authors WHERE AuthorId = 2), (select $node_id from Books  WHERE BookId = 3))
	, ((select $node_id from Authors WHERE AuthorId = 2), (select $node_id from Books  WHERE BookId = 4))
	, ((select $node_id from Authors WHERE AuthorId = 3), (select $node_id from Books  WHERE BookId = 5))
	, ((select $node_id from Authors WHERE AuthorId = 4), (select $node_id from Books  WHERE BookId = 6))
	, ((select $node_id from Authors WHERE AuthorId = 4), (select $node_id from Books  WHERE BookId = 7))
	, ((select $node_id from Authors WHERE AuthorId = 5), (select $node_id from Books  WHERE BookId = 8))
	, ((select $node_id from Authors WHERE AuthorId = 6), (select $node_id from Books  WHERE BookId = 9))
	, ((select $node_id from Authors WHERE AuthorId = 6), (select $node_id from Books  WHERE BookId = 10))
	, ((select $node_id from Authors WHERE AuthorId = 7), (select $node_id from Books  WHERE BookId = 11))
	, ((select $node_id from Authors WHERE AuthorId = 7), (select $node_id from Books  WHERE BookId = 12))
	, ((select $node_id from Authors WHERE AuthorId = 8), (select $node_id from Books  WHERE BookId = 13))
	, ((select $node_id from Authors WHERE AuthorId = 9), (select $node_id from Books  WHERE BookId = 14))
	, ((select $node_id from Authors WHERE AuthorId = 9), (select $node_id from Books  WHERE BookId = 15))
	, ((select $node_id from Authors WHERE AuthorId = 10), (select $node_id from Books  WHERE BookId = 16))
	, ((select $node_id from Authors WHERE AuthorId = 10), (select $node_id from Books  WHERE BookId = 17))
;

INSERT INTO GenreOf ($from_id, $to_id)
VALUES
	((select $node_id from Genre WHERE GenreId = 1), (select $node_id from Books  WHERE BookId = 1))
	, ((select $node_id from Genre WHERE GenreId = 14), (select $node_id from Books  WHERE BookId = 1))
	
	, ((select $node_id from Genre WHERE GenreId = 1), (select $node_id from Books  WHERE BookId = 2))
	, ((select $node_id from Genre WHERE GenreId = 16), (select $node_id from Books  WHERE BookId = 2))
	
	, ((select $node_id from Genre WHERE GenreId = 1), (select $node_id from Books  WHERE BookId = 3))
	, ((select $node_id from Genre WHERE GenreId = 7), (select $node_id from Books  WHERE BookId = 3))
	
	, ((select $node_id from Genre WHERE GenreId = 1), (select $node_id from Books  WHERE BookId = 4))
	
	, ((select $node_id from Genre WHERE GenreId = 2), (select $node_id from Books  WHERE BookId = 5))
	, ((select $node_id from Genre WHERE GenreId = 10), (select $node_id from Books  WHERE BookId = 5))
	, ((select $node_id from Genre WHERE GenreId = 12), (select $node_id from Books  WHERE BookId = 5))
	
	, ((select $node_id from Genre WHERE GenreId = 12), (select $node_id from Books  WHERE BookId = 6))
	, ((select $node_id from Genre WHERE GenreId = 17), (select $node_id from Books  WHERE BookId = 6))
	
	, ((select $node_id from Genre WHERE GenreId = 10), (select $node_id from Books  WHERE BookId = 7))
	, ((select $node_id from Genre WHERE GenreId = 12), (select $node_id from Books  WHERE BookId = 7))
	, ((select $node_id from Genre WHERE GenreId = 17), (select $node_id from Books  WHERE BookId = 7))
	-- Дж. Р. Р. Толкин
	, ((SELECT $node_id FROM Genre WHERE GenreId = 2), (SELECT $node_id FROM Books WHERE BookId = 8))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 8), (SELECT $node_id FROM Books WHERE BookId = 8))

	-- Михаил Булгаков
	, ((SELECT $node_id FROM Genre WHERE GenreId = 4), (SELECT $node_id FROM Books WHERE BookId = 9))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 5), (SELECT $node_id FROM Books WHERE BookId = 9))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 6), (SELECT $node_id FROM Books WHERE BookId = 9))
	
	, ((SELECT $node_id FROM Genre WHERE GenreId = 1), (SELECT $node_id FROM Books WHERE BookId = 10))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 5), (SELECT $node_id FROM Books WHERE BookId = 10))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 3), (SELECT $node_id FROM Books WHERE BookId = 10))

	-- Антуан де Сент-Экзюпери
	, ((SELECT $node_id FROM Genre WHERE GenreId = 6), (SELECT $node_id FROM Books WHERE BookId = 11))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 3), (SELECT $node_id FROM Books WHERE BookId = 11))

	, ((SELECT $node_id FROM Genre WHERE GenreId = 1), (SELECT $node_id FROM Books WHERE BookId = 12))

	-- Франк Герберт
	, ((SELECT $node_id FROM Genre WHERE GenreId = 12), (SELECT $node_id FROM Books WHERE BookId = 13))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 8), (SELECT $node_id FROM Books WHERE BookId = 13))
	-- Александр Дюма
	, ((SELECT $node_id FROM Genre WHERE GenreId = 1), (SELECT $node_id FROM Books WHERE BookId = 14))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 8), (SELECT $node_id FROM Books WHERE BookId = 14))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 13), (SELECT $node_id FROM Books WHERE BookId = 14))

	, ((SELECT $node_id FROM Genre WHERE GenreId = 1), (SELECT $node_id FROM Books WHERE BookId = 15))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 13), (SELECT $node_id FROM Books WHERE BookId = 15))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 8), (SELECT $node_id FROM Books WHERE BookId = 15))

	-- Якуб Колас
	, ((SELECT $node_id FROM Genre WHERE GenreId = 1), (SELECT $node_id FROM Books WHERE BookId = 16))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 15), (SELECT $node_id FROM Books WHERE BookId = 16))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 13), (SELECT $node_id FROM Books WHERE BookId = 16))

	, ((SELECT $node_id FROM Genre WHERE GenreId = 1), (SELECT $node_id FROM Books WHERE BookId = 17))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 16), (SELECT $node_id FROM Books WHERE BookId = 17))
	, ((SELECT $node_id FROM Genre WHERE GenreId = 13), (SELECT $node_id FROM Books WHERE BookId = 17))
;
	
INSERT INTO PublishedBy ($to_id, $from_id) VALUES
-- Лев Толстой
	((SELECT $node_id FROM Publishers WHERE PublisherId = 1), (SELECT $node_id FROM Books WHERE BookId = 1)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 1), (SELECT $node_id FROM Books WHERE BookId = 2)),
	
-- Федор Достоевский
	((SELECT $node_id FROM Publishers WHERE PublisherId = 2), (SELECT $node_id FROM Books WHERE BookId = 3)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 2), (SELECT $node_id FROM Books WHERE BookId = 4)),
	
-- Джоан Роулинг
	((SELECT $node_id FROM Publishers WHERE PublisherId = 3), (SELECT $node_id FROM Books WHERE BookId = 5)),
	
-- Джордж Оруэлл
	((SELECT $node_id FROM Publishers WHERE PublisherId = 4), (SELECT $node_id FROM Books WHERE BookId = 6)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 4), (SELECT $node_id FROM Books WHERE BookId = 7)),
	
-- Дж. Р. Р. Толкин
	((SELECT $node_id FROM Publishers WHERE PublisherId = 5), (SELECT $node_id FROM Books WHERE BookId = 8)),
	
-- Михаил Булгаков
	((SELECT $node_id FROM Publishers WHERE PublisherId = 6), (SELECT $node_id FROM Books WHERE BookId = 9)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 6), (SELECT $node_id FROM Books WHERE BookId = 10)),
	
-- Антуан де Сент-Экзюпери
	((SELECT $node_id FROM Publishers WHERE PublisherId = 7), (SELECT $node_id FROM Books WHERE BookId = 11)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 7), (SELECT $node_id FROM Books WHERE BookId = 12)),
	
-- Франк Герберт
	((SELECT $node_id FROM Publishers WHERE PublisherId = 8), (SELECT $node_id FROM Books WHERE BookId = 13)),
	
-- Александр Дюма
	((SELECT $node_id FROM Publishers WHERE PublisherId = 9), (SELECT $node_id FROM Books WHERE BookId = 14)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 9), (SELECT $node_id FROM Books WHERE BookId = 15)),
	
-- Якуб Колас
	((SELECT $node_id FROM Publishers WHERE PublisherId = 10), (SELECT $node_id FROM Books WHERE BookId = 16)),
	((SELECT $node_id FROM Publishers WHERE PublisherId = 10), (SELECT $node_id FROM Books WHERE BookId = 17))
;
	
SELECT * FROM "Books";