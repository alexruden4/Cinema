INSERT INTO genres (genre_name) VALUES
('Action'),
('Comedy'),
('Drama'),
('Sci-Fi');

INSERT INTO movies (title, duration, release_year) VALUES
('Inception', 148, 2010),
('Interstellar', 169, 2014),
('The Matrix', 136, 1999);

INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1,4),
(2,4),
(3,1);

INSERT INTO halls (hall_name, capacity) VALUES
('Hall 1', 100),
('Hall 2', 80);

INSERT INTO seats (hall_id, seat_row, seat_number) VALUES
(1,1,1),(1,1,2),(1,1,3),
(2,1,1),(2,1,2);

INSERT INTO screenings (movie_id, hall_id, start_time, price) VALUES
(1,1,'2025-05-01 18:00:00',12.50),
(2,2,'2025-05-01 20:00:00',13.50);

INSERT INTO customers (first_name, last_name, email) VALUES
('Max', 'Mustermann', 'max@email.com'),
('Anna', 'Schmidt', 'anna@email.com');

INSERT INTO bookings (customer_id, screening_id, booking_date) VALUES
(1,1,NOW()),
(2,2,NOW());

INSERT INTO tickets (booking_id, seat_id) VALUES
(1,1),
(1,2),
(2,4);

INSERT INTO payments (booking_id, amount, payment_date, payment_method) VALUES
(1,25.00,NOW(),'Card'),
(2,13.50,NOW(),'PayPal');
