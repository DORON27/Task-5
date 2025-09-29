# Task 5:  SQL Joins (Inner, Left, Right, Full Outer).
The task is the part of the SQL Developer Intership.

## Objective:
Learn to combine data from multiple tables using different types of SQL Joins.
---
## Tools Used:
MySQL
---
## Sample Tables
### Customers

| CustomerID | Name     | City    | 
|------------|----------|---------|
| 1          | Alice    | Delhi   |
| 2          | Bob      | Mumbai  |
| 3          | Charlie  | Pune    | 

### Orders

| OrderID | CustomerID | Product |
|---------|------------|---------|
|  101    |      1     | Laptop  |
|  102    |      2     | Phone   |
|  103    |      4     | Tablet  |
---
## Queries
1.INNER JOIN
```sql
select Customers.Name,Orders.Product
from Customers
inner join Orders on Customers.CustomerID=Orders.CustomerID;
```
2.LEFT JOIN
```sql
select Customers.Name,Orders.Product
from Customers
left join Orders on Customers.CustomerID=Orders.CustomerID;
```
3.RIGHT JOIN
```sql
select Customers.Name,Orders.Product
from Orders
right join Customers on Orders.CustomerID=Customers.CustomerID;
```
4.FULL OUTER JOIN
```sql
select Customers.Name, Orders.Product
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
union
select Customers.Name, Orders.Product
from Orders
left join Customers ON Orders.CustomerID = Customers.CustomerID;
```
