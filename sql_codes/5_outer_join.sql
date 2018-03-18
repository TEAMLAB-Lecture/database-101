-- Template
SELECT column_name(s)
  FROM table1
  LEFT JOIN table2
  ON table1.column_name = table2.column_name;

-- Left Join
USE northwind;

SELECT * FROM northwind.Territories;

SELECT * FROM northwind.Employees;

SELECT T.territoryID, E.LastName
	FROM Territories as T
		LEFT JOIN EmployeeTerritories as ET
			ON T.TerritoryID = ET.TerritoryID
		LEFT JOIN  Employees as E
			ON E.EmployeeID = ET.EmployeeID;


-- Full Outer JOIN
-- Templete
SELECT column_names
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;


SELECT T.territoryID, E.LastName
	FROM Territories as T
		LEFT JOIN EmployeeTerritories as ET
			ON T.TerritoryID = ET.TerritoryID
		LEFT JOIN  Employees as E
			ON E.EmployeeID = ET.EmployeeID

UNION

SELECT T.territoryID, E.LastName
	FROM Territories as T
		RIGHT JOIN EmployeeTerritories as ET
			ON T.TerritoryID = ET.TerritoryID
		RIGHT JOIN  Employees as E
			ON ET.EmployeeID = E.EmployeeID;
