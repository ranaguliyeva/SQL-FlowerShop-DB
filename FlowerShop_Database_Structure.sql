drop table OrderDetails;
drop table Orders;
drop table Customers;
drop table Flowers;
drop table Suppliers;
drop table Branches;

create table Customers
( 
CustomerID number primary key,
FirstName varchar2(30) not null,
LastName varchar2(30)  not null,
Address varchar2(30),
Phone varchar2(30)
);

create table Orders 
(
OrderID number primary key,
CustomerID number not null,
BranchID number not null,
OrderDate date not null
);

CREATE TABLE Flowers (
    FlowerID  NUMBER primary key,
    Name       VARCHAR2(50) NOT NULL,
    Price      FLOAT NOT NULL, check(price>0),
    SupplierID NUMBER NOT NULL
);


CREATE TABLE Suppliers (
    SupplierID NUMBER primary key,
    Name    VARCHAR2(50) NOT NULL,
    Address VARCHAR2(50) NOT NULL
);



create table OrderDetails(
OrderID number not null,
FlowerID number not null,
Quantity number not null,check(quantity>0)
);

create table Branches(
BranchID number primary key,
Location varchar2(50) not null,
Phone varchar2(30)
);


alter table Orders add constraint orders_customers_fk foreign key(CustomerID) references Customers(CustomerID);
alter table Orders add constraint orders_branchs_fk foreign key(BranchID) references Branches(BranchID);

alter table Flowers add constraint flowers_suppliers_fk foreign key(SupplierID) references Suppliers(SupplierID);

alter table OrderDetails add constraint OrderDetails_Orders_fk foreign key(OrderID) references orders(OrderID);
alter table OrderDetails add constraint OrderDetails_Flowers_fk foreign key(FlowerID) references Flowers(FlowerID);




insert into Customers(customerID, FirstName, LastName, Address, Phone) values(1, 'Ali', 'Aliyev', 'Azadliq prospekti 20', '+994502334864');
commit;
insert into Customers(customerID, FirstName, LastName, Address, Phone) values(2, 'Elvin', 'Abbasov', 'Hazi Aslanov', '+994559452267');
commit;
insert into Customers(customerID, FirstName, LastName, Address, Phone) values(3, 'Kerim', 'Qafarov', 'Xatai m', '+994703459134');
commit;
insert into Customers(customerID, FirstName, LastName, Address, Phone) values(4, 'Sadiq', 'Yusifov', 'Icheri sheher m', '+994517354587');
commit;
insert into Customers(customerID, FirstName, LastName, Address, Phone) values(5, 'Elchin', 'Mammadov', '28 may m', '+994558992167');
commit;
insert into Customers(customerID, FirstName, LastName, Address, Phone) values(6, 'Sabina', 'Rzayeva', 'Khalqlar dostluqu m', '+994703844378');
commit;
insert into Customers(customerID, FirstName, LastName, Address, Phone) values(7, 'Elvira', 'Isazade', 'Qara Qarayev m', '+9942139056');
commit;

select*from customers;

insert into Branches(BranchID,Location, Phone) values(1,'Ahmadli', '+994-50-123-22-33');
commit;
insert into Branches(BranchID,Location, Phone) values(2,'Xatai', '+994-70-453-33-44');
commit;
insert into Branches(BranchID,Location, Phone) values(3,'28 MAY', '+994-77-678-44-55');
commit;
insert into Branches(BranchID,Location, Phone) values(4,'Ganjlik', '+994-55-379-55-66');
commit;
insert into Branches(BranchID,Location, Phone) values(5,'G.Garayev', '+994-51-174-66-77');
commit;
insert into Branches(BranchID,Location, Phone) values(6,'N.Narimanov', '+994-50-362-77-88');
commit;
insert into Branches(BranchID,Location, Phone) values(7,'Bilajari', '+994-77-198-88-99');
commit;

select*from Branches;


insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (1, 4, 5, to_date('2023/05/29 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
commit;
insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (2, 5, 4, to_date('2023/05/28 13:06:23', 'yyyy/mm/dd hh24:mi:ss'));
commit;
insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (3, 2, 6, to_date('2023/05/27 18:38:00', 'yyyy/mm/dd hh24:mi:ss'));
commit;
insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (4, 7, 1, to_date('2023/05/27 15:43:24', 'yyyy/mm/dd hh24:mi:ss'));
commit;
insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (5, 6, 3, to_date('2023/05/26 09:15:26', 'yyyy/mm/dd hh24:mi:ss'));
commit;
insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (6, 1, 7, to_date('2023/05/25 12:56:57', 'yyyy/mm/dd hh24:mi:ss'));
commit;
insert into Orders(OrderID, CustomerID, BranchID, OrderDate) values (7, 3, 2, to_date('2023/05/22 14:32:13', 'yyyy/mm/dd hh24:mi:ss'));
commit;

select*from orders;


insert into Suppliers(SupplierID, Name,Address) 
values(1, 'Blossom Garden Supplies','123 Main Street, Anytown, USA');
commit;

insert into Suppliers(SupplierID, Name,Address) 
values(2, 'Green Thumb Florals','456 Elm Avenue, Cityville, USA');
commit;

insert into Suppliers(SupplierID, Name,Address) 
values(3, 'Petal Power Nursery','789 Oak Lane, Countryside, USA');
commit;

insert into Suppliers(SupplierID, Name,Address) 
values(4, 'Rosebud Floral Imports','987 Pine Street, Bloomington, USA');
commit;

insert into Suppliers(SupplierID, Name,Address) 
values(5, 'Lilys Garden Center','123 Main Street, Anytown, USA');
commit;

insert into Suppliers(SupplierID, Name,Address) 
values(6, 'Sunflower Wholesale Flowers','654 Magnolia Boulevard, Sunnyside, USA');
commit;

insert into Suppliers(SupplierID, Name,Address) 
values(7, 'Orchid Oasis Growers','876 Willow Lane, Riverside, USA');
commit;


insert into Suppliers(SupplierID, Name, Address) 
values (8, 'Sofiya', 'Koroglu m');
commit;

insert into Suppliers(SupplierID, Name, Address) 
values (9, 'Khanlar', 'Ganjlik');
commit;


select*from Suppliers ;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(1, 'Amber',20.5,2);
commit;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(2, 'Rose',36,7);
commit;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(3, 'Sunflower',3.2,4);
commit;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(4, 'Orchid',9,3);
commit;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(5, 'Tulip',2,1);
commit;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(6, 'Daisy',5.6,7);
commit;

insert into Flowers(Flowerid, Name,Price,Supplierid) values(7, 'Lily',13,7);
commit;

select*from Flowers ;


insert into OrderDetails(OrderID, FlowerID, Quantity) values(1,2,3);
commit;
insert into OrderDetails(OrderID, FlowerID, Quantity) values(6,7,7);
commit;
insert into OrderDetails(OrderID, FlowerID, Quantity) values(3,5,6);
commit;
insert into OrderDetails(OrderID, FlowerID, Quantity) values(4,4,3);
commit;
insert into OrderDetails(OrderID, FlowerID, Quantity) values(5,6,2);
commit;
insert into OrderDetails(OrderID, FlowerID, Quantity) values(7,1,5);
commit;
insert into OrderDetails(OrderID, FlowerID, Quantity) values(2,3,8);
commit;

select*from OrderDetails ;

--Reporting
/*Total Customers: A report to display the total number of customers.*/
select count(CUSTOMERID) as total_customers from customers;

/*Customers per Branch: A report to display the number of customers who have placed orders at each branch.*/
select count(c.customerid)as total_customers, b.branchid
from customers c
join orders o on c.customerid=o.customerid
join branches b on o.branchid=b.branchid
group by b.branchid;

/*Orders per Customer: A report to display the number of orders placed by each customer*/
select count(o.orderid) as total_orders, c.customerid
from orders o
join customers c on o.customerid=c.customerid
group by c.customerid;

/*Orders per Branch: A report to display the number of orders processed by each branch.*/
select count(o.orderid) as total_orders, b.branchid
from orders o
join branches b on o.branchid=b.branchid
group by b.branchid;

/*Orders per Day: A report to show the number of orders placed on each date.*/
select count(orderid) as total_orders, orderdate
from orders
group by orderdate;

/*Most Popular Flowers: A report to display the flowers that have been ordered the most.*/
select name, count(flowerid) as quantity from flowers
group by name;

/*Flowers per Supplier: A report to show the number of different flowers provided by
each supplier.*/
select count(distinct f.flowerid) as num_flowers, s.supplierid
from flowers f
join suppliers s on f.supplierid=s.supplierid
group by s.supplierid;

/*Suppliers per Flower: A report to show the supplier(s) for each type of flower.*/
select s.name as supplier_name, f.name as flower_name
from suppliers s
join flowers f on s.supplierid=f.supplierid;

/*Most Active Branches: A report to show the branches with the most orders processed.*/
select b.branchid, count(o.orderid) as num_orders
from branches b
join orders o on b.branchid=o.branchid
group by b.branchid;


