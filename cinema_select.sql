"Movies"

SELECT * FROM movies;

"Name and Duration of the Movie"

SELECT title, duration
FROM movies;

"Customers and Their orders"

SELECT 
c.first_name,
c.last_name,
b.booking_date
FROM bookings b
JOIN customers c ON b.customer_id = c.customer_id;

"Tickets with a Seat"

SELECT 
t.ticket_id,
se.seat_row,
se.seat_number
FROM tickets t
JOIN seats se ON t.seat_id = se.seat_id;

"Tickets bought from every customer"

SELECT 
c.first_name,
c.last_name,
COUNT(t.ticket_id) AS tickets_count
FROM customers c
JOIN bookings b ON c.customer_id = b.customer_id
JOIN tickets t ON b.booking_id = t.booking_id
GROUP BY c.customer_id;
