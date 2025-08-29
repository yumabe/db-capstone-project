CREATE VIEW OrdersView AS
SELECT orderid, quantity, totalcost
FROM orders
WHERE Quantity > 2;