select * from SalesLT.Customer;

SELECT DISTINCT * FROM SalesLT.Customer

SELECT DISTINCT * FROM SalesLT.Product;

SELECT FirstName, LastName, Phone from SalesLT.Customer;

SELECT DISTINCT FirstName, LastName, Phone from SalesLT.Customer;



-- Case with select
SELECT  Name, Color, 
CASE 
WHEN ListPrice> 1000 THEN 'High price'
ELSE 'Low Price'
END AS PriceLevel
FROM SalesLT.Product;

-- Case with select and between
SELECT  Name, Color, 
CASE 
WHEN ListPrice> 1000 THEN 'High price'
WHEN ListPrice BETWEEN 500 AND 800 THEN 'Decent price'
ELSE 'Low Price'
END AS PriceLevel
FROM SalesLT.Product;


-- Where with select 
SELECT Name, Size, Weight 
FROM SalesLT.Product 
WHERE Color='Red' and Weight IS NOT NULL;

-- Where with select 
SELECT Name, Size, Weight 
FROM SalesLT.Product 
WHERE Color='Red' OR Color='Black';

-- Where with select 
SELECT Name, Size, Weight 
FROM SalesLT.Product 
WHERE Color IS NOT NULL;

-- Arithmetic operator 
SELECT Name, StandardCost + ListPrice AS TotalPrice  
FROM SalesLT.Product
-- WHERE StandardCost + ListPrice !='0';
WHERE StandardCost + ListPrice <>'0';
-- SQL SERVER WorkFlow is  FROM -> WHERE -> SELECT


SELECT Name, StandardCost + ListPrice AS Ratio
FROM SalesLT.Product
WHERE StandardCost/ListPrice > 0 and ListPrice <> '0'
ORDER BY Name;


--Print full name with space
SELECT DISTINCT FirstName, MiddleName, LastName,
FirstName + ' ' + MiddleName + ' ' + LastName  AS FullName --If there is any null value its return null 
FROM SalesLT.Customer

--Print full name with space USING CONCAT FUNCATION
SELECT DISTINCT FirstName, MiddleName, LastName,
 CONCAT(FirstName, ' ' ,MiddleName ,' ' ,LastName) --concat function ignore null value if there is any!
AS FullName
FROM SalesLT.Customer

-- concat_ws 
SELECT DISTINCT FirstName,
CONCAT_WS(' ', 'Mr', FirstName)
FROM SalesLT.Customer

-- concat_ws email
SELECT DISTINCT FirstName,
CONCAT_WS('@',FirstName, 'gmail.com') AS Mail
FROM SalesLT.Customer

-- WITHOUT BETWEEN 
SELECT Name, Size, Weight 
FROM SalesLT.Product 
WHERE ProductID >= 600 AND ProductID <=800;

-- WITH BETWEEN 
SELECT ProductID, Name, Size, Weight 
FROM SalesLT.Product 
-- WHERE ProductID BETWEEN 600 AND 800;
WHERE ProductID NOT BETWEEN 600 AND 800;

--CAST 
SELECT CAST('19981212' AS DATE) AS DEMO;

-- WITHOUT IN 
SELECT ProductID, Name, Size, Weight 
FROM SalesLT.Product 
WHERE ProductID = '600' OR ProductID = '700' OR ProductID = '800' OR ProductID = '900';

-- WITH IN 
SELECT ProductID, Name, Size, Weight 
FROM SalesLT.Product 
WHERE ProductID NOT IN (600, 700, 800, 900) ;