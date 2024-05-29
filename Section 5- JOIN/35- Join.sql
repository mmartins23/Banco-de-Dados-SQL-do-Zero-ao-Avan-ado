-- Inner Join
SELECT orders.orderID, customers.name, orders.product, orders.quantity
FROM section5join.orders
JOIN section5join.customers ON orders.CustomerID = customers.CustomerID;


--  Join with AS
SELECT O.orderID, C.name, O.product, O.quantity
FROM section5join.orders AS O
JOIN section5join.customers AS C ON O.customerID = C.customerID;


--  Join with WHERE
SELECT O.orderID, C.name, O.product, O.quantity
FROM section5join.orders AS O
JOIN section5join.customers AS C ON O.customerID = C.customerID
WHERE C.city = 'New York';
