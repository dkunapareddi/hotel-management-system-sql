-- =============================================================
-- Hotel Management System (HMS) — Schema
-- MySQL 8.x
-- =============================================================

CREATE DATABASE IF NOT EXISTS HotelManagement;
USE HotelManagement;

-- Guests: profiles, preferences, and feedback
CREATE TABLE IF NOT EXISTS guests (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(255),
    contact_info  VARCHAR(255),
    preferences   TEXT,
    feedback      TEXT
);

-- Rooms: inventory, pricing, and real-time status
-- (Reconstructed from the columns used in the sample data inserts.)
CREATE TABLE IF NOT EXISTS rooms (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    room_type  VARCHAR(100),
    price      DECIMAL(10, 2),
    status     VARCHAR(50)
);

-- Reservations: bookings linked to guests and rooms
CREATE TABLE IF NOT EXISTS reservations (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    guest_id        INT,
    room_id         INT,
    check_in_date   DATETIME,
    check_out_date  DATETIME,
    payment_status  VARCHAR(100),
    FOREIGN KEY (guest_id) REFERENCES guests(id)
);

-- Payments: billing and transaction records
CREATE TABLE IF NOT EXISTS payments (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    order_id        INT,
    date            DATETIME,
    amount          DECIMAL(10, 2),
    payment_method  VARCHAR(255)
);
