-- UNION
SELECT C.Name AS Description
FROM section5join.customers AS C
UNION ALL
SELECT O.Product AS Description
FROM section5join.orders AS O;


-- UNION DISTINCT
SELECT C.Name AS Description
FROM section5join.customers AS C
UNION DISTINCT
SELECT O.Product AS Description
FROM section5join.orders AS O;