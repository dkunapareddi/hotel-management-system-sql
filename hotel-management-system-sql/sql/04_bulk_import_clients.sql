-- =============================================================
-- Hotel Management System (HMS) — Bulk CSV Import
-- Loads client records from a CSV file with LOAD DATA INFILE.
-- Update the file path before running. Your MySQL server must
-- allow file imports (see the secure_file_priv setting).
-- =============================================================
USE HotelManagement;

CREATE TABLE IF NOT EXISTS clients (
    id               INT AUTO_INCREMENT PRIMARY KEY,
    name             VARCHAR(255),
    email            VARCHAR(255),
    phone            VARCHAR(100),
    address          VARCHAR(255),
    additional_info  TEXT
);

LOAD DATA INFILE '/path_to_your_file/clients.csv'
INTO TABLE clients
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(name, email, phone, address, additional_info);

-- Verify the import
SELECT * FROM clients;
