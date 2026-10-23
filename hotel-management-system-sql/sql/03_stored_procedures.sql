-- =============================================================
-- Hotel Management System (HMS) — Stored Procedures
-- =============================================================
USE HotelManagement;

DELIMITER $$

-- Return all reservations for a given room
CREATE PROCEDURE GetReservations(IN RoomID INT)
BEGIN
    SELECT * FROM reservations WHERE room_id = RoomID;
END $$

DELIMITER ;

-- Example call
CALL GetReservations(1);
