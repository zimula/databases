drop database if exists webshop;
create database webshop;
use webshop;
drop table if exists customers;
drop table if exists products;
drop table if exists stock;
drop table if exists shippers;
drop table if exists orders;
drop table if exists shoppingCart;

create table customers(
customerId int not null auto_increment,
customerName varchar (30),
mobile varchar (8),
email varchar (25),
addresse text, 
points int,
primary key (customerId)
)
;
create table products(
productID int not null auto_increment,
productName varchar(25),
unitPrice int,
productDescription text,
primary key (productID)
)
;
create table stock(
stockId int not null auto_increment,
productID int,
quantity int,
primary key(stockId),
foreign key (productID) references products(productID)
)
;
create table shippers(
shipperID int not null auto_increment,
shipperName varchar (25),
primary key (shipperID)
)
;
create table orders(
orderID int not null auto_increment,
orderDate date,
customerID int, 
shipperID int,
shipDate date, 
deliverDate date,
orderStatus varchar (25),
primary key (orderID),
foreign key (customerID) references customers(customerId),
foreign key (shipperID) references shippers(shipperID)
)
;
create table shoppingCart(
productID int,
quantity int,
price float,
orderID int,
foreign key (productID) references products(productId),
foreign key (orderID) references orders(orderID),
primary key (productID, orderID)
)
;