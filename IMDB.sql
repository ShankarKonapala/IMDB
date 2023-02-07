CREATE DATABASE IMDBdataBase;
-- Movie Table 
CREATE TABLE movie (
	id INT PRIMARY KEY auto_increment,
    Name VARCHAR(255),
    Media INT,
    Genre INT,
    Artist INT,
    Role INT,
    Review INT,
	FOREIGN KEY fk_media(Media)  REFERENCES movie_media(Id),
    FOREIGN KEY fk_genre(Genre)  REFERENCES movie_genre(Id),
    FOREIGN KEY fk_artist(Artist)  REFERENCES movie_artist(Id),
    FOREIGN KEY fk_role(Role)  REFERENCES artist_role(Id),
    FOREIGN KEY fk_review(Review)  REFERENCES movie_review(Id)
);
select * from movie;
-- drop table movie;
Insert into movie (Name, Media, Genre, Artist, Role, Review) values ('ABC', 1, 1, 2, 1, 1), ('EFG', 2, 1, 2, 1, 2), ('XYZ', 1, 2, 1, 2, 1), ('AZS', 1, 1, 2, 1, 1);
--  Media Table
CREATE TABLE movie_media(
	Id INT PRIMARY KEY auto_increment,
    Type VARCHAR(255)
);
Insert into movie_media (Type) values ('Video'), ('Image');
select * from movie_media;
-- drop table movie_media;

-- Genre Table
CREATE TABLE movie_genre(
	Id INT PRIMARY KEY auto_increment,
    Genre VARCHAR(255)
);
Insert into movie_genre (Genre) values ('Comedy'), ('Mistery'), ('Drama'), ('Sci-fi'), ('Musical');
select * from movie_genre;

-- Artist table 
CREATE TABLE movie_artist(
	Id INT PRIMARY KEY auto_increment,
    Artist VARCHAR(255),
    Skill INT,
    FOREIGN KEY fk_skilll(Skill)  REFERENCES artist_skills(Id)
);
Insert into movie_artist (Artist, Skill) values ('Dulqueer Salman', 1), ('Allu Arjun', 2), ('ShahRukh Khan',4), ('Manoj Wajpeyi', 5), ('Ashok Saraf', 1);
select * from movie_artist;
drop table movie_artist;

-- Skills Table 
CREATE TABLE artist_skills(
	Id INT PRIMARY KEY auto_increment,
    Skills VARCHAR(255)
);
Insert into artist_skills (Skills) values ('Acting'), ('Dancing'), ('Narating'), ('Stunts'), ('Singing');
select * from artist_skills;

-- Review Table 
CREATE TABLE movie_review(
	Id INT PRIMARY KEY auto_increment,
    UserName VARCHAR(255),
    Review tinyint
);
Insert into movie_review (UserName, Review) values ('Mahesh', 3), ('Satish', 4), ('Paul', 1), ('Altaf', 5), ('Gurvinder', 4);
select * from movie_review;

-- Tabble for roles
CREATE TABLE artist_role(
	Id INT PRIMARY KEY auto_increment,
    Role VARCHAR(255)
);
Insert into artist_role (Role) values ('Protagonist'), ('Anti Protagonist'), ('Side Artist'), ('Supporting Actor'), ('Friend of Protagonist');
select * from artist_role;