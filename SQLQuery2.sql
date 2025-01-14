  use BankDb

  delete from Customers;

  delete from Customers 
  where SubscriptionDate LIKE '%@%';

  select * from Customers
  where Website LIKE 'https%';

  select * from Customers
  where FirstName LIKE 'A%';

  select * from Customers
  order by LastName desc ,FirstName asc

  select * from Customers
  where Country in('Bangladesh', 'Norway')
  order by Country

  select distinct Country from Customers
  order by Country


  select count(*) from Customers;


  select FirstName + ' - ' +LastName as FullName
  from Customers
  order by FirstName, LastName


  select count(*) from Customers
  where Country ='Norway';

  select count(*) from Customers
  where Country not like 'N%';

  select count(*) from Customers
  where Country like 'N%';

  --The BETWEEN operator is inclusive: begin and end values are included.
  select count(*) from Customers
  where [Index] between 10000 and 20000

  update Customers
  set Country = 'Slovakia'
  where Country = 'Slovakia (Slovak Republic)' 
  
  select * from Customers
  where Country = 'Slovakia'

  select * from Customers
  order by [Index] desc;

  select max([Index])  as MaX_Index
  from Customers


  select * from  Customers
  where SubscriptionDate between '2000-01-01' and '2015-01-01'
  
  --rename a table colum

