USE northwind;

SELECT * FROM Employees;

SELECT * FROM Employees 
   WHERE TitleOfCourtesy IN ( "Ms.", "Dr.");

SELECT * FROM Employees 
   WHERE EmployeeID IN (
   SELECT EmployeeID 
	FROM Orders 
	GROUP BY EmployeeID 
    HAVING count(EmployeeID)>100);


SELECT * FROM Customers where Country = "UK"
UNION
SELECT * FROM Customers where Country = "Mexico";

SELECT * FROM Products
	WHERE (ProductID) IN
			(SELECT ProductID FROM `Order Details`
	GROUP BY ProductID
    HAVING count(ProductID) > 30
);

SELECT * FROM Products
	WHERE (ProductID) NOT IN
			(SELECT ProductID FROM `Order Details`
	GROUP BY ProductID
    HAVING count(ProductID) > 30
);