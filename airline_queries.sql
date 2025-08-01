USE prueba;

-- 1. Total number of flights
SELECT COUNT(DISTINCT flight_number) AS total_flights FROM Flight;

-- 2. Average flight distance
SELECT AVG(distance) AS avg_distance FROM Flight;

-- 3. Average number of seats
SELECT AVG(total_seats) AS avg_seats FROM Aircraft;

-- 4. Average miles flown by customers grouped by status
SELECT status, AVG(total_mileage) AS avg_mileage
FROM Customer
GROUP BY status;

-- 5. Max miles flown by customers grouped by status
SELECT status, MAX(total_mileage) AS max_mileage
FROM Customer
GROUP BY status;

-- 6. Total number of aircraft with "Boeing" in the name
SELECT COUNT(*) AS boeing_count
FROM Aircraft
WHERE name LIKE '%Boeing%';

-- 7. Flights with distance between 300 and 2000 miles
SELECT * FROM Flight
WHERE distance BETWEEN 300 AND 2000;

-- 8. Average flight distance booked grouped by customer status
SELECT c.status, AVG(f.distance) AS avg_booked_distance
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
JOIN Flight f ON b.flight_id = f.flight_id
GROUP BY c.status;

-- 9. Most often booked aircraft by gold status members
SELECT a.name, COUNT(*) AS booking_count
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
JOIN Flight f ON b.flight_id = f.flight_id
JOIN Aircraft a ON f.aircraft_id = a.aircraft_id
WHERE c.status = 'Gold'
GROUP BY a.name
ORDER BY booking_count DESC
LIMIT 1;
