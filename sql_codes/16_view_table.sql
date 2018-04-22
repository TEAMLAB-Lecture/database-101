CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;


CREATE VIEW [Current Product List] AS
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = No;

USE northwind;

SELECT * FROM Orders;

	SELECT MONTH(OrderDate) as order_month, sum((od.UnitPrice * od.Quantity)) as total_sales
		FROM `Order Details` as od
		INNER JOIN Orders as os
		On os.OrderID = od.OrderID
		GROUP BY order_month;

CREATE VIEW onthly_total_sales AS
	SELECT MONTH(OrderDate) as order_month, sum((od.UnitPrice * od.Quantity)) as total_sales
		FROM `Order Details` as od
		INNER JOIN Orders as os
		On os.OrderID = od.OrderID
		GROUP BY order_month;

SELECT * FROM onthly_total_sales;

SELECT * FROM onthly_total_sales
	WHERE total_sales > 100000;
    
