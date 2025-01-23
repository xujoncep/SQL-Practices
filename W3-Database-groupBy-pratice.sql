 use W3DB

--drop table Users

create table Users(
Id int identity(1,1) primary key not null,
UserName nvarchar(255) not null
)

insert into Users(UserName)
values ('User1')

select count(CustomerId) , Country
from customers
Group by Country
Having count(CustomerID) > 5 and count(CustomerID) <10
order by Country desc;

select shippers.ShipperName, Count(orders.OrderID) as TotalOrder 
from orders
left join shippers
on orders.ShipperID = shippers.ShipperID
group by ShipperName
having Count(orders.OrderID)> 60



select * 
from orders
inner join customers
on orders.CustomerID = customers.CustomerID
order by CustomerName;


