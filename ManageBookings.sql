DELIMITER //
CREATE PROCEDURE `ManageBooking`(IN booking_date DATE, IN table_no INT)
BEGIN
    DECLARE booking_count INT;

    SELECT COUNT(*) INTO booking_count
    FROM bookings
    WHERE bookingdate = booking_date AND tablenumber = table_no;

    IF booking_count > 0 THEN
        SELECT CONCAT('Table ', table_no, ' is already booked on ', booking_date) AS 'Booking Status',
               c.customername AS Customer_Name
        FROM bookings AS b
        JOIN customers AS c ON b.customerid = c.customerid
        WHERE b.bookingdate = booking_date AND b.tablenumber = table_no;
    ELSE
        SELECT CONCAT('Table ', table_no, ' is available on this date.') AS 'Booking Status';
    END IF;
END //
DELIMITER ;