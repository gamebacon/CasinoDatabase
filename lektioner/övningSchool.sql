use school;

drop table teachers;

create table teachers(
id int not null primary key auto_increment,
firstName varchar(255) not null,
lastName varchar(255) not null,
age int not null
);

alter table teachers auto_increment = 100;

describe teachers;

insert into teachers (firstName, lastName, age) values 
("Peter", "Hanson", 44),
("Alred", "Hummus", 23),
("Jesper", "Kringus", 67);

select * from teachers;

create table courses(
id int primary key not null auto_increment,
name varchar(255) not null,
maxStudents int,
teacherID int not null
);

#alter table courses auto_increment = 100;

create view test as
select * from courses;

DELIMITER $$
CREATE PROCEDURE get_courses()
BEGIN
	SELECT * FROM courses;
END$$
DELIMITER ;
    



