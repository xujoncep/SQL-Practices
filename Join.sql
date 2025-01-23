--Inner Join in two table

--select ProductName, Price, CategoryName
--from products 
--inner join categories
--on products.CategoryID = categories.CategoryID
--where Price>20 and CategoryName like '%a%'
--order by Price desc;

--Inner Join in three table 

--select *
--from ((orders
--inner join customers on orders.CustomerID = customers.CustomerID)
--inner join shippers on orders.ShipperID = shippers.ShipperID)
--order by shippers.ShipperID, customers.CustomerID desc;

--Left Join in two table

--select *
--from customers
--left join orders 
--on customers.CustomerID = orders.CustomerID
--where CustomerName like 'A%' AND CustomerName like '%e';

--Right Join in two table 

--select *
--from orders
--right join customers 
--on orders.CustomerID = customers.CustomerID 

--select customers.CustomerName, orders.OrderID

--select *
--from customers
--full outer join orders
--on customers.CustomerID = orders.CustomerID
--order by CustomerName desc

--self join on new table
use W3DB
--drop table info;
create table info(
empId int primary key not null,
empName varchar(255) not null,
manId int not null
);

insert into info(empid,empName, manId)
values
(2,'akash', 4),
(3,'dharti', 2),
(4,'vayu', 3)

select * from info

select T1.empName as Employee, T2.empName as Manager
from info as T1
join info as T2
on T1.empId = T2.manId