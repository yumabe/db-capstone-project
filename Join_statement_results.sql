SELECT
    c.customerid,
    c.customername,
    o.orderid,
    o.totalcost,
    m.menuname,
    mi.coursename,
    mi.startername
FROM
    customers AS c
JOIN
    orders AS o ON c.customerid = o.customerid
JOIN
    menus AS m ON o.menuid = m.menuid
JOIN
    menuitems AS mi ON m.menuitemid = mi.menuitemid
WHERE
    o.totalcost > 150
ORDER BY
    o.totalcost ASC;