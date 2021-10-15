create database övningar3;
use övningar3;

#################################### 1
create table bools 
(
	yolo boolean
);


insert into bools values
(false),
(true),
(false);

select * from bools where yolo;

#################################### 2

create database bas1;
create database bas2;
create database bas3;

use bas1;
create table employees (
id int primary key not null,
firstName varchar(255),
lastName varchar(255),
startedWorking date,
manager_id int,
branch_id int
);

insert into bas1.employees values (1, "Michael", "With", "1995-04-4", null, 1); 
insert into bas1.employees values (2, "Katharina", "With", "1995-04-4", null, 1); 
insert into bas1.employees values (3, "Amanda", "With", "2017-07-12", 1, 1); 
insert into bas1.employees values (4, "William", "With", "2020-07-12", 1, 1); 
insert into bas1.employees values (5, "Malin", "Ledborn", "2019-02-12", 1, 1); 


insert into bas1.employees values (6, "Valeria", "Engström", "1999-01-12", null, 2); 
insert into bas1.employees values (7, "Alexander", "Andersson", "2021-01-12", 6, 2); 
insert into bas1.employees values (8, "Johanna", "Fagerström", "2021-1-12", 6, 2); 


create table branches (
	id int primary key not null,
    branch_name varchar(45),
    manager_id int
);

insert into bas2.branches values (1, "Märkesbutiken", 1);
insert into bas2.branches values (2, "NordicSafari", 1);


create table managers
(
	id int primary key not null,
    branch_id int
);
alter table bas3.managers add column employee_id int after id;

insert into bas3.managers values (1, 1, 1);
insert into bas3.managers values (2, 2, 1);
insert into bas3.managers values (3, 6, 2);


select employees.id, employees.firstName, employees.lastName, branches.branch_name from bas1.employees join bas2.branches
where bas1.employees.branch_id = bas2.branches.id;

#################################### 3

CREATE TABLE employees
(
id int not null primary key,
first_name varchar(255),
last_name varchar(255),
manager_id int
);

insert into employees values
(1, "Michael", "With", null),
(2, "Katharina", "With", 1),
(3, "Amanda", "With", 2),
(4, "Charlotte", "Ledborn", 2),
(5, "William", "With", 3),
(6, "Malin", "Ledborn", 2),
(7, "Dylan", "Ledborn", 6);

SELECT emps.first_name AS "First name",
emps.last_name AS "Last name",
mgrs.first_name AS "Manager"
FROM employees emps
RIGHT JOIN employees mgrs
ON emps.manager_id = mgrs.id;

#################################### 4 - Skapa ett bord med två primary keys

CREATE TABLE CARD
(
value SMALLINT NOT NULL,
suit ENUM("CLUBS", "HEARTS", "SPADES", "DIAMONDS") NOT NULL,
PRIMARY KEY(value, suit)
);

INSERT INTO CARD VALUES(1, "HEARTS");
INSERT INTO CARD VALUES(2, "HEARTS");
INSERT INTO CARD VALUES(3, "HEARTS");
INSERT INTO CARD VALUES(4, "HEARTS");
INSERT INTO CARD VALUES(5, "HEARTS");
INSERT INTO CARD VALUES(6, "HEARTS");
INSERT INTO CARD VALUES(7, "HEARTS");
INSERT INTO CARD VALUES(8, "HEARTS");
INSERT INTO CARD VALUES(9, "HEARTS");
INSERT INTO CARD VALUES(10, "HEARTS");
INSERT INTO CARD VALUES(11, "HEARTS");
INSERT INTO CARD VALUES(12, "HEARTS");
INSERT INTO CARD VALUES(13, "HEARTS");

INSERT INTO CARD VALUES(1, "DIAMONDS");
INSERT INTO CARD VALUES(2, "DIAMONDS");
INSERT INTO CARD VALUES(3, "DIAMONDS");
INSERT INTO CARD VALUES(4, "DIAMONDS");
INSERT INTO CARD VALUES(5, "DIAMONDS");
INSERT INTO CARD VALUES(6, "DIAMONDS");
INSERT INTO CARD VALUES(7, "DIAMONDS");
INSERT INTO CARD VALUES(8, "DIAMONDS");
INSERT INTO CARD VALUES(9, "DIAMONDS");
INSERT INTO CARD VALUES(10, "DIAMONDS");
INSERT INTO CARD VALUES(11, "DIAMONDS");
INSERT INTO CARD VALUES(12, "DIAMONDS");
INSERT INTO CARD VALUES(13, "DIAMONDS");

INSERT INTO CARD VALUES(1, "CLUBS");
INSERT INTO CARD VALUES(2, "CLUBS");
INSERT INTO CARD VALUES(3, "CLUBS");
INSERT INTO CARD VALUES(4, "CLUBS");
INSERT INTO CARD VALUES(5, "CLUBS");
INSERT INTO CARD VALUES(6, "CLUBS");
INSERT INTO CARD VALUES(7, "CLUBS");
INSERT INTO CARD VALUES(8, "CLUBS");
INSERT INTO CARD VALUES(9, "CLUBS");
INSERT INTO CARD VALUES(10, "CLUBS");
INSERT INTO CARD VALUES(11, "CLUBS");
INSERT INTO CARD VALUES(12, "CLUBS");
INSERT INTO CARD VALUES(13, "CLUBS");

INSERT INTO CARD VALUES(1, "SPADES");
INSERT INTO CARD VALUES(2, "SPADES");
INSERT INTO CARD VALUES(3, "SPADES");
INSERT INTO CARD VALUES(4, "SPADES");
INSERT INTO CARD VALUES(5, "SPADES");
INSERT INTO CARD VALUES(6, "SPADES");
INSERT INTO CARD VALUES(7, "SPADES");
INSERT INTO CARD VALUES(8, "SPADES");
INSERT INTO CARD VALUES(9, "SPADES");
INSERT INTO CARD VALUES(10, "SPADES");
INSERT INTO CARD VALUES(11, "SPADES");
INSERT INTO CARD VALUES(12, "SPADES");
INSERT INTO CARD VALUES(13, "SPADES");

CREATE TABLE POKERHAND 
(
c1_value SMALLINT,
c1_suit ENUM("DIAMONDS", "SPADES", "HEARTS", "CLUBS"),
c2_value SMALLINT,
c2_suit ENUM("DIAMONDS", "SPADES", "HEARTS", "CLUBS"),
c3_value SMALLINT,
c3_suit ENUM("DIAMONDS", "SPADES", "HEARTS", "CLUBS"),
c4_value SMALLINT,
c4_suit ENUM("DIAMONDS", "SPADES", "HEARTS", "CLUBS"),
c5_value SMALLINT,
c5_suit ENUM("DIAMONDS", "SPADES", "HEARTS", "CLUBS")
);


INSERT INTO POKERHAND VALUES (
10, "CLUBS",
11, "CLUBS",
12, "CLUBS",
13, "CLUBS",
1, "CLUBS"
);

SELECT * FROM CARD CROSS JOIN POKERHAND;


