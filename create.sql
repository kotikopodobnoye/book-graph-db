use master
drop database if exists BookGraph

CREATE DATABASE BookGraph
GO

use BookGraph
GO

CREATE TABLE Authors (
	AuthorID int identity primary key,
	FullName nvarchar(50) not null,
	Birthday datetime not null
) as node
;

CREATE TABLE Books (
	BookId int identity primary key,
	Title nvarchar(128) not null,
	PublicationYear int not null,
	[ISBNCode] varchar(18) not null,
) as node
;

CREATE TABLE Genre (
	GenreId int identity primary key,
	Title nvarchar(64) not null,
	Description nvarchar(256)
) as node
;

CREATE TABLE Publishers (
	PublisherId int identity primary key,
	Title nvarchar(64) not null,
	Location nvarchar(128) not null
) as node
;

CREATE TABLE AuthorOf AS edge
CREATE TABLE GenreOf AS edge
CREATE TABLE PublishedBy AS edge
;

ALTER TABLE AuthorOf ADD CONSTRAINT EC_AuthorOf CONNECTION (Authors TO Books)
ALTER TABLE GenreOf ADD CONSTRAINT EC_GenreOf CONNECTION (Genre TO Books)
ALTER TABLE PublishedBy ADD CONSTRAINT EC_AuthorOf CONNECTION (Books TO Publishers)
;