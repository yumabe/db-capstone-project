DELIMITER //

CREATE PROCEDURE CancelOrder(IN order_id_to_cancel INT)
BEGIN
    DELETE FROM orders
    WHERE orderid = order_id_to_cancel;
    
    SELECT CONCAT('Order ', order_id_to_cancel, ' is cancelled.') AS Confirmationo;
END //

DELIMITER ;