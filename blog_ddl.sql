USE prueba;

-- Tabla de clientes
CREATE TABLE IF NOT EXISTS Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    status VARCHAR(20),
    total_mileage INT
);

-- Tabla de aeronaves
CREATE TABLE IF NOT EXISTS Aircraft (
    aircraft_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    total_seats INT
);

-- Tabla de vuelos
CREATE TABLE IF NOT EXISTS Flight (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_number VARCHAR(20),
    aircraft_id INT,
    distance INT,
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(aircraft_id)
);

-- Tabla de reservas
CREATE TABLE IF NOT EXISTS Booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    flight_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (flight_id) REFERENCES Flight(flight_id)
);
