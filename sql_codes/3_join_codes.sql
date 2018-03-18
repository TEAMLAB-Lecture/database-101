SELECT A.column_a, B.column_b
  FROM TABLE_A as A
  INNER JOIN TABLE_B as B
  ON A.key_column = B.forginkey_column;

SELECT A.column_a, B.column_b
  FROM TABLE_A as A, TABLE_B as B
  WHERE A.key_column = B.forginkey_column;


-- Join Statement
SELECT * FROM `order details`;

SELECT * FROM Orders;

SELECT orders.shipcity, detail.orderID as amount
   FROM `order details` as detail
   INNER JOIN Orders
   ON Orders.OrderID = detail.OrderID;
   
SELECT orders.shipcity, detail.productID as amount  
   FROM Orders, `order details` as detail
   WHERE Orders.OrderID = detail.OrderID;



-- Order에 대해의 OrderID와 Amount(unitprice * Quantiy) 를 출력하시오
SELECT orders.shipcity, (detail.UnitPrice * detail.Quantity) as amount
	FROM `order details` as detail
	INNER JOIN Orders
	ON Orders.OrderID = detail.OrderID;

-- 각 shipcity 별로 판매금액의  총합을 구하여라
SELECT orders.shipcity, sum(detail.UnitPrice * detail.Quantity) as amount
    FROM `order details` as detail
    INNER JOIN Orders
    ON Orders.OrderID = detail.OrderID
    GROUP BY orders.shipcity;

-- CARTESIAN PRODUCT
SELECT * FROM northwind.Territories;

SELECT * FROM northwind.Region;

SELECT R.RegionDescription, T.TerritoryDescription
    FROM Region as R, Territories  as T;
	
SELECT R.RegionDescription, T.TerritoryDescription
    FROM Region as R, Territories  as T
    WHERE R.RegionID = T.RegionID;

SELECT R.RegionDescription, T.TerritoryDescription
    FROM Region as R
    INNER JOIN  Territories  as T
    ON R.RegionID = T.RegionID;
    
-- Multiple Join

-- Self Join
SELECT R1.RegionDescription, R2.RegionDescription
    FROM Region as R1, Region as R2

