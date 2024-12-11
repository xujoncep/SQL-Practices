SELECT JobCandidateId, ModifiedDate
FROM  HumanResources.JobCandidate
ORDER BY ModifiedDate DESC;

--priority FROM > WHERE > SELECT > ORDER BY

--TOP THREE CANDIDATE MODIFIED THERE CV RECENTLY 

SELECT TOP 3 JobCandidateId, ModifiedDate
FROM  HumanResources.JobCandidate
ORDER BY ModifiedDate DESC;

--PRINT FULL ADDRESS

SELECT AddressID,CONCAT(AddressLine1, ' |', City, ' |', PostalCode)
FROM Person.Address
ORDER BY AddressID;

--SORTING USING TWO ORDER
SELECT Name, ProductNumber, ListPrice
FROM Production.Product
WHERE StandardCost >0 AND ListPrice>0
ORDER BY StandardCost ASC, ListPrice DESC;

--LASTPRICE IN RANGE 

SELECT Name, ProductID, ListPrice, Size
FROM Production.Product
WHERE ListPrice BETWEEN 5 AND 30  AND Size IS NOT NULL;

-- HAVING 
SELECT ProductID, COUNT(ListPrice)
FROM Production.Product
GROUP BY ProductID
HAVING COUNT(ListPrice)>0;

--AVG 
SELECT AVG(ListPrice) AS AVERAGE_PRICE
FROM Production.Product;

--COUNT 
SELECT COUNT(ProductID) AS TOTAL_ID
FROM Production.Product;

--MAX 
SELECT MAX(ListPrice) AS MAX_PRICE
FROM Production.Product;

--MIN 
SELECT MIN(ListPrice) AS MIN_PRICE
FROM Production.Product;

--SUM 
SELECT SUM(ListPrice) AS TOTAL_PRICE
FROM Production.Product;

SELECT AVG(ListPrice) AS AVERAGE_PRICE, SUM(ListPrice) AS TOTAL_PRICE, MAX(ListPrice) AS MAX_PRICE, MIN(ListPrice) AS MIN_PRICE, SUM(ListPrice) AS TOTAL_PRICE
FROM Production.Product;