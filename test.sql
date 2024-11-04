SELECT TOP (1000) [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
 FROM [AdventureWorksLT2022].[SalesLT].[Product]

 select top(100) ProductID, Color, ListPrice from SalesLT.Product;

 select distinct FirstName, LastName from SalesLT.Customer;