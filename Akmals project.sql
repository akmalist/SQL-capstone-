use [CapstoneBussines ]
go


create schema [db_People];

CREATE TABLE Sales(
SalesId int not null primary key,
PersonId int null,
ProductId int null,
cost int null,
region varchar(15) not null,
quantity int not null);


CREATE TABLE HR(
PersonId int not null primary key,
Title varchar(100) null,
Salary int null,
StartDate date null,
IsActive varchar(15) null,
ManagerId int null);


create schema [db_Sales];

CREATE TABLE Product(
ProductId int  not null primary key,
ProductName varchar(1000) null,
InverntoryId int null );


CREATE TABLE Orders(
SalesId int not null foreign key references Sales(salesId),
Vendor varchar(100) not null primary key,
SalesDate date null,
ShippingDate date null,
ReceivedDate date null);


CREATE TABLE Inventory(
InventoryId int not null,
Location varchar(100) not null primary key,
Quantiry int null);
 




 ---5 create a table with agregated values from your data



--TotalSales

SELECT sum(cost*quantity)
INTO Sales.Agregation
FROM  [dbo].[Sales]
group by quantity


--Customer
SELECT [customerName] 
FROM  [dbo].Orders
 


 --Year

 select SalesDate

 from Orders



 -product

 select ProductId
 from Product







