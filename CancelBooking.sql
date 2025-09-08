CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
	DELETE FROM bookings 
    WHERE bookingid = booking_id;
    SELECT CONCAT('Booking ', booking_id, ' cancelled successfully.') AS Status;
END