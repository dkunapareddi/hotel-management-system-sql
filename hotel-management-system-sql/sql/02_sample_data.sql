-- =============================================================
-- Hotel Management System (HMS) — Sample Data
-- =============================================================
USE HotelManagement;

-- Insert guests
INSERT INTO guests (name, contact_info, preferences, feedback) VALUES
('John Doe',   '1234567890', 'Near elevator',      'Very satisfied'),
('Jane Smith', '0987654321', 'Away from elevator', 'Needs improvement');

-- Insert rooms
INSERT INTO rooms (room_type, price, status) VALUES
('Single', 100.00, 'Available'),
('Double', 150.00, 'Occupied');

-- Insert reservations
INSERT INTO reservations (guest_id, room_id, check_in_date, check_out_date, payment_status) VALUES
(1, 1, '2023-05-10 14:00:00', '2023-05-12 11:00:00', 'Paid'),
(2, 2, '2023-05-11 14:00:00', '2023-05-13 11:00:00', 'Due');

-- Insert payments
INSERT INTO payments (order_id, date, amount, payment_method) VALUES
(1, '2023-05-10 14:00:00', 200.00, 'Credit Card'),
(2, '2023-05-11 14:00:00', 300.00, 'Cash');

-- Verify
SELECT * FROM guests;
SELECT * FROM reservations;
SELECT * FROM rooms;
SELECT * FROM payments;
