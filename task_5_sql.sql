create database salesab;
use salesab;

create table Customers (
CustomerID int primary key,
Name varchar(50),
City varchar(50)
);

create table Orders (
OrderID int primary key,
CustomerID int,
Product varchar(50),
foreign key (CustomerID) references Customers(CustomerID)
);

-- 1.Inner join
select Customers.Name,Orders.Product
from Customers
inner join Orders on Customers.CustomerID=Orders.CustomerID;

-- 2.Left join
select Customers.Name,Orders.Product
from Customers
left join Orders on Customers.CustomerID=Orders.CustomerID;

-- 3.Right join
select Customers.Name,Orders.Product
from Orders
right join Customers on Orders.CustomerID=Customers.CustomerID;

-- 4.Full outer join
select Customers.Name, Orders.Product
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
union
select Customers.Name, Orders.Product
from Orders
left join Customers ON Orders.CustomerID = Customers.CustomerID;





