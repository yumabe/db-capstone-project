-- Parte 1: Prepara la sentencia
PREPARE GetOrderDetail FROM
'SELECT orderid, quantity, totalcost
FROM orders
WHERE customerid = ?';

-- Parte 2: Declara y asigna el valor a la variable
SET @id = 1;

-- Parte 3: Ejecuta la sentencia preparada usando la variable
EXECUTE GetOrderDetail USING @id;

-- Parte 4: Deasigna la memoria de la sentencia preparada (buena práctica)
DEALLOCATE PREPARE GetOrderDetail;