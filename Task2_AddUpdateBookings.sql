DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT,
    IN booking_date DATE
)
BEGIN
    UPDATE bookings
    SET bookingdate = booking_date
    WHERE bookingid = booking_id;
    
    SELECT CONCAT('Booking ', booking_id, ' updated.') AS Status;
END //

DELIMITER ;