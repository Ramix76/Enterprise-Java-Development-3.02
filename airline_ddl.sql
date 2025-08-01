CREATE DATABASE IF NOT EXISTS prueba;

USE prueba;

-- Clients table
CREATE TABLE IF NOT EXISTS Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    status VARCHAR(20),
    total_mileage INT
);

-- Aircrafts table
CREATE TABLE IF NOT EXISTS Aircraft (
    aircraft_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    total_seats INT
);

-- Flights table
CREATE TABLE IF NOT EXISTS Flight (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_number VARCHAR(20),
    aircraft_id INT,
    distance INT,
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(aircraft_id)
);

-- Booking table
CREATE TABLE IF NOT EXISTS Booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    flight_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (flight_id) REFERENCES Flight(flight_id)
);

INSERT INTO Customer (name, status, total_mileage) VALUES
('Agustine Riviera', 'Silver', 115235),
('Alaina Sepulvida', 'None', 6008),
('Tom Jones', 'Gold', 205767),
('Sam Rio', 'None', 2653),
('Jessica James', 'Silver', 127656),
('Ana Janco', 'Silver', 136773),
('Jennifer Cortez', 'Gold', 300582),
('Christian Janco', 'Silver', 14642);

INSERT INTO Aircraft (name, total_seats) VALUES
('Boeing 747', 400),
('Airbus A330', 236),
('Boeing 777', 264);

INSERT INTO Flight (flight_number, aircraft_id, distance) VALUES
('DL143', 1, 135),
('DL122', 2, 4370),
('DL53', 3, 2078),
('DL222', 3, 1765),
('DL37', 1, 531);

-- Agustine Riviera
INSERT INTO Booking (customer_id, flight_id) VALUES
(1, 1), (1, 2), (1, 1), (1, 1), (1, 1);

-- Alaina Sepulvida
INSERT INTO Booking (customer_id, flight_id) VALUES
(2, 2);

-- Tom Jones
INSERT INTO Booking (customer_id, flight_id) VALUES
(3, 2), (3, 3), (3, 4);

-- Sam Rio
INSERT INTO Booking (customer_id, flight_id) VALUES
(4, 1), (4, 1), (4, 5);

-- Jessica James
INSERT INTO Booking (customer_id, flight_id) VALUES
(5, 1), (5, 2);

-- Ana Janco
INSERT INTO Booking (customer_id, flight_id) VALUES
(6, 4);

-- Jennifer Cortez
INSERT INTO Booking (customer_id, flight_id) VALUES
(7, 4);

-- Christian Janco
INSERT INTO Booking (customer_id, flight_id) VALUES
(8, 4);


