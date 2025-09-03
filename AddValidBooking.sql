DELIMITER //

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE table_status INT;
    
    START TRANSACTION;
    
    -- Verificar si la mesa ya está reservada
    SELECT COUNT(*)
    INTO table_status
    FROM bookings
    WHERE bookingdate = booking_date AND tablenumber = table_number;
    
    -- Lógica para la reserva
    IF table_status > 0 THEN
        -- Si la mesa está reservada, hacer un ROLLBACK
        ROLLBACK;
        SELECT CONCAT('Table ', table_number, ' is already booked - booking cancelled.') AS Status;
    ELSE
        -- Si la mesa está disponible, insertar el registro y hacer un COMMIT
        INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID, StaffID)
        VALUES (NULL, booking_date, table_number, 1, 1);
        
        COMMIT;
        SELECT CONCAT('Booking for table ', table_number, ' on ', booking_date, ' successful.') AS Status;
    END IF;
    
END //

DELIMITER ;