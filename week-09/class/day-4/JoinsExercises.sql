USE northwind;

-- 1.  List the product id, product name, 
-- unit price and category name of all products.  
-- Order by category name and within that, 
-- by product name.


SELECT
	p.ProductID,
    p.ProductName,
    p.UnitPrice,
	c.CategoryName
FROM
	Products p
    JOIN Categories c ON (c.CategoryID = p.CategoryID)
ORDER BY
	c.CategoryName, p.ProductName;








-- 2. List the product id, product name, unit price 
-- and supplier name of all products that cost more 
-- than $75.  Order by product name.

SELECT
	p.ProductID,
    p.ProductName,
    p.UnitPrice,
    s.CompanyName
FROM
	Products AS p
    JOIN Suppliers AS s ON (p.SupplierID = s.SupplierID)
WHERE
	p.UnitPrice > 75
ORDER BY p.ProductName;





-- 3. List the product id, product name, unit price, 
-- category name, and supplier name of every product.  
-- Order by product name.


SELECT
	p.ProductID,
    p.ProductName,
    p.UnitPrice,
    c.CategoryName,
    s.CompanyName
FROM
	Products AS p
    JOIN Suppliers AS s ON (p.SupplierID = s.SupplierID)
	JOIN Categories c ON (c.CategoryID = p.CategoryID)
ORDER BY p.ProductName;







-- 4. What is the product name(s) and categories of the 
-- most expensive products?  
-- HINT:  Find the max price in a subquery 
-- and then use that in your more complex query 
-- that joins products with categories.


SELECT
	p.ProductName,
    p.UnitPrice,
    c.CategoryName
FROM
	Products AS p
    JOIN Categories AS c ON (p.CategoryID = c.CategoryID)
WHERE
	p.UnitPrice = (SELECT MAX(UnitPrice) FROM Products);
    
SELECT
	p.ProductName,
    p.UnitPrice,
    c.CategoryName
FROM
	Products AS p
    JOIN Categories AS c ON (p.CategoryID = c.CategoryID)
ORDER BY p.UnitPrice DESC
LIMIT 1;



-- 5. List the order id, ship name, ship address, 
-- and shipping company name of every order that 
-- shipped to Germany.

SELECT
	o.OrderID,
    o.ShipName,
    o.ShipAddress,
    s.CompanyName
FROM 
	Orders AS o
    JOIN Shippers AS s ON (o.ShipVia = s.ShipperID)
WHERE
	o.ShipCountry = "Germany";


-- 6. List the order id, order date, ship name, 
-- ship address of all orders that ordered 
-- "Sasquatch Ale"? 

SELECT
	od.OrderID,
    o.OrderDate,
    o.ShipName,
    o.ShipAddress
FROM
	`Order Details` AS od
    JOIN Orders AS o ON (od.OrderID = o.OrderID)
    JOIN Products AS p ON (p.ProductID = od.ProductID)
WHERE
	p.ProductName = "Sasquatch Ale";
    
SELECT
	od.OrderID,
    o.OrderDate,
    o.ShipName,
    o.ShipAddress
FROM
	`Order Details` AS od
    JOIN Orders AS o ON (od.OrderID = o.OrderID)
    JOIN Products AS p ON (p.ProductID = od.ProductID AND p.ProductName = "Sasquatch Ale")




