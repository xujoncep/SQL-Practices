USE AdventureWorks2019;

--like
SELECT BusinessEntityID, HireDate, JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE 'D%';

SELECT BusinessEntityID, HireDate, JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager';

--multiple char 
SELECT * 
FROM Person.StateProvince
--WHERE StateProvinceCode LIKE '[AB]%';
--WHERE StateProvinceCode LIKE 'A[BK]%';
WHERE StateProvinceCode LIKE '[AB][CD]%';

-- without character range
 SELECT ProductNumber 
 FROM Production.Product
 --WHERE ProductNumber LIKE 'L%';
 WHERE ProductNumber LIKE 'L[ABCDEFGH]%';

-- withcharacter range
 SELECT ProductNumber 
 FROM Production.Product
 --WHERE ProductNumber LIKE 'L%';
 --WHERE ProductNumber LIKE 'L[A-H]%';
 --WHERE ProductNumber LIKE 'L[A-Z]%' AND ProductNumber LIKE '%[0-8%';
 --WHERE ProductNumber LIKE 'L[A-Z]-[1-5]%';
 WHERE ProductNumber LIKE 'L[A-Z]-[^1-5]%'; --negation character

--like operator with underscore
 SELECT ProductNumber 
 FROM Production.Product
 WHERE ProductNumber LIKE '[A-E]_-____';

 --escaping single character

 SELECT * 
 FROM Purchasing.Vendor
 WHERE Name LIKE '%''%';