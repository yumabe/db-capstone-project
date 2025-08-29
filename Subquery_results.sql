SELECT menuname
FROM menus
WHERE menuid = ANY (
    SELECT menuid
    FROM orders
    WHERE quantity > 2
);