

create database if not exists övningar1;
use övningar1;
######################################################### 7

create table rockstars 
(
	id int primary key not null,
    firstName varchar(255),
    lastName varchar(255),
    birth date,
    weight float,
    length float
);

######################################################### 8

	create table animals
    (
    id int primary key not null auto_increment,
    name varchar(45),
	weight float
    );

DROP table animals;

######################################################### 9

create table fighters 
(
	persnr varchar(255) primary key not null,
    firstName varchar(255),
    lastName varchar(255),
    nickname varchar(45),
    weight float,
    length float,
    reach float,
    wins int,
    lost int
);

INSERT INTO fighters values
("1995-10-12", "Karl", "Alberktsson", "Kung", 102, 190, 130, 5, 2),
("1995-1-2", "David", "Jacobsson", "SlimBoyFat", 77, 185, 120, 3, 2),
("1984-12-30", "Alexander", "Gustavsson", "Mauler", 105, 193, 140, 25, 4),
("1988-6-5", "Connor", "McGreggor", "The Noturios", 65, 180, 120, 30, 2),
("1994-10-24", "Samuel", "Bark", "Samon Dekker", 66, 178, 112, 30, 10);

DELETE FROM fighters WHERE firstName = "David";
DELETE FROM fighters;

######################################################### 10

UPDATE fighters SET wins = 6 WHERE firstName = "Karl";
SELECT * FROM fighters;
SELECT firstName, lastName, wins FROM fighters WHERE nickname = "Kung";

UPDATE fighters SET lost = -1;


######################################################### 11

CREATE TABLE plants 
(
	id int primary key not null auto_increment,
    name varchar(255),
    color varchar(15),
    maxLengthCM int,
    origin varchar(45)
);

INSERT INTO plants (name, color, maxLengthCM, origin) values
("Cacti", "Green", 130, "Desert"),
("SunFlower", "Yellow", 500, "FlowerForest"),
("PalmTree", "Brown", 1500, "Jungle"),
("Poppy", "Red", 15, "FlowerForest");

SELECT * FROM mysql.user;








