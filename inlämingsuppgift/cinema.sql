DROP DATABASE IF EXISTS cinema;
CREATE DATABASE IF NOT EXISTS cinema;
USE cinema;

CREATE TABLE address (
	id INT PRIMARY KEY NOT NULL,
    country VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    zip VARCHAR(10) NOT NULL
);

CREATE TABLE person (
	id INT PRIMARY KEY NOT NULL,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(10),
    address_id INT,
    FOREIGN KEY(address_id) REFERENCES address(id)
);

CREATE TABLE employee (
	id INT PRIMARY KEY NOT NULL,
    person_id INT NOT NULL,
    manager INT REFERENCES id,
    FOREIGN KEY(person_id) REFERENCES person(id)
);

CREATE TABLE job (
	id INT PRIMARY KEY NOT NULL,
	title VARCHAR(255),
    min_salary FLOAT,
    max_salary FLOAT
);

CREATE TABLE shift (
	employee_id INT NOT NULL,
    job_id INT NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES employee(id),
    FOREIGN KEY(job_id) REFERENCES job(id),
    PRIMARY KEY(employee_id, job_id)
);

CREATE TABLE cinema (
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    address_id INT NOT NULL,
    FOREIGN KEY(address_id) REFERENCES address(id)
);

CREATE TABLE saloon (
	id INT NOT NULL PRIMARY KEY,
    cinema_id INT NOT NULL,
    max_capacity INT,
    FOREIGN KEY(cinema_id) REFERENCES cinema(id)
);


CREATE TABLE movie (
	id INT NOT NULL PRIMARY KEY,
	title VARCHAR(255), 
	genre VARCHAR(45),
	length TIME,
    rating DECIMAL(2,1)
);

CREATE TABLE scheduled_movie (
	id INT NOT NULL PRIMARY KEY,
    saloon_id INT NOT NULL,
    movie_id INT NOT NULL,
    showtime DATETIME NOT NULL,
    FOREIGN KEY(saloon_id) REFERENCES saloon(id),
    FOREIGN KEY(movie_id) REFERENCES movie(id)
);

CREATE TABLE ticket (
	id INT PRIMARY KEY NOT NULL,
    scheduled_movie_id INT NOT NULL,
    price FLOAT,
    seat INT,
    _row INT
);

CREATE TABLE customer (
	id INT NOT NULL PRIMARY KEY,
    person_id INT NOT NULL,
    ticket_id INT,
    FOREIGN KEY(person_id) REFERENCES person(id),
    FOREIGN KEY(ticket_id) REFERENCES ticket(id)
);

INSERT INTO address VALUES
(1, "Sweden", "Malmö", "Stortorget 29", "211 34"),
(2, "Sweden", "Malmö", "Stortorget 14", "211 33"),
(3, "Sweden", "Malmö", "Generalsgatan 1", "211 33");

INSERT INTO movie VALUES
(1, "No time to die",  "Action", "02:45:00", 7.7),
(2, "Free Guy", "Comedy", "01:55:00", 7.3),
(3, "The Sucide Squad", "Action", "02:12:00",  7.3),
(4, "Cruella", "Drama", "02:14:00", 7.4),
(5, "Black Widow",  "Action", "02:14:00", 7.4);





