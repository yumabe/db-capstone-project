DELIMITER //

CREATE PROCEDURE AddBooking(
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    INSERT INTO bookings (bookingid, customerid, bookingdate, tablenumber)
    VALUES (booking_id, customer_id, booking_date, table_number);
    
    SELECT CONCAT('New booking added for table ', table_number, ' on ', booking_date, '.') AS Status;
END //

DELIMITER ;