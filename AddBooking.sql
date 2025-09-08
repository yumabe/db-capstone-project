CREATE PROCEDURE AddBooking (
	IN booking_id INT,
    IN customer_id INT,
    IN table_number INT,
    IN booking_date DATE)
BEGIN
	INSERT INTO bookings (bookingid, customerid, tablenumber, bookingdate)
    VALUES (booking_id, customer_id, table_number, booking_date);
    SELECT CONCAT('New booking added for table ', table_number, ' on ', booking_date, '.') AS Status;
END