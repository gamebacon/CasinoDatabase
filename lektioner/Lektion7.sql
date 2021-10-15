CREATE DATABASE airport;
USE airport;



CREATE TABLE traveler
(
	id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE aircraft
(
	id INT PRIMARY KEY,
    destination VARCHAR(255),
    max_capacity INT,
    max_luggage_weight INT
);

CREATE TABLE flight
(
	id INT PRIMARY KEY,
    aircraft_id INT,
    departure_point VARCHAR(255),
    destination VARCHAR(255),
    departure_time DATETIME,
    arrival_time DATETIME,
    CONSTRAINT flight_aircraft FOREIGN KEY(id) # aircraft_id
    REFERENCES aircraft(id) # aircraft_id
    ON UPDATE CASCADE # update if change
    ON DELETE NO ACTION # set null if removed
);



CREATE TABLE luggage
(
	id INT PRIMARY KEY,
    weight float,
    type VARCHAR(255),
    CONSTRAINT traveller_luggage_key FOREIGN KEY(id) #travler id
    REFERENCES traveler(id) # traveler id
    ON UPDATE CASCADE # update if change
    ON DELETE NO ACTION # set null if removed
);

CREATE TABLE luggage_on_flight
(
	luggage_id INT,
    flight_id int,
    PRIMARY KEY(luggage_id, flight_id), # luggage id
	CONSTRAINT lof_luggage_key FOREIGN KEY(luggage_id) #luggage id
    REFERENCES luggage(luggage_id) # luggage id
    ON UPDATE CASCADE # update if change
    ON DELETE NO ACTION, # set null if removed
	CONSTRAINT lof_flight_key FOREIGN KEY(flight_id)
    REFERENCES flight(flight_id)
    ON UPDATE CASCADE # update if change
    ON DELETE NO ACTION # set null if removed
);




DELIMITER $$

START



END 

DELIMITER ; 







