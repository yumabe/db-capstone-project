DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE is_booked INT DEFAULT 0;
    
    SELECT COUNT(bookingid)
    INTO is_booked
    FROM bookings
    WHERE bookingdate = booking_date AND tablenumber = table_number;
    
    IF is_booked > 0 THEN
        SELECT CONCAT('Table ', table_number, ' is already booked for ', booking_date, '.') AS BookingStatus;
    ELSE
        SELECT CONCAT('Table ', table_number, ' is available for ', booking_date, '.') AS BookingStatus;
    END IF;
END //

DELIMITER ;