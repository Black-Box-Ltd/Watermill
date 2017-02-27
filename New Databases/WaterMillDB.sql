drop database if exists WaterMillDB;

create database WaterMillDB;
use WaterMillDB;

drop table if exists items;
drop table if exists suppliers;
drop table if exists supplierItems;
drop table if exists users;
drop table if exists orders;
drop table if exists itemOrders;

create table items (itemID  bigint(15) NOT NULL Auto_Increment, itemName varchar(20) NOT NULL, primaryCategory varchar(15) NOT NULL,
sellingState bool NOT NULL, listingType varchar(10) NOT NULL, promotion varchar(20), itemLocation varchar(10) NOT NULL,
Primary key (itemID));

create table suppliers (supplierID bigint(15) NOT NULL Auto_Increment, supplierName varchar(20) NOT NULL, postCode varchar(8) NOT NULL,
city varchar(15) NOT NULL, country varchar(5) NOT NULL, Primary Key (supplierID));

create table supplierItems (itemID bigint(15) NOT NULL, supplierID bigint(15) NOT NULL, currentPrice decimal(12, 2) NOT NULL,
deliveryTime varchar(10), Primary Key (itemID, supplierID), Foreign Key (ItemID) references items(itemID),
Foreign Key (supplierID) references suppliers(supplierID));

CREATE table users (userID  bigint(15) NOT NULL Auto_Increment,
firstName VarChar(10) NOT NULL, lastName VARCHAR(10) NOT NULL, username VARCHAR(16) unique NOT NULL,
passwords varchar(64) NOT NULL, position varchar(15) NOT NULL, adminUser tinyint(1), 
Primary key (userID));

create table orders (orderID bigint(15) NOT NULL Auto_Increment, username varchar(16) NOT NULL, deliveryDate date NOT NULL,
arrivalDate date NOT NULL, authorisation bool NOT NULL, Primary Key(orderID),
Foreign Key (username) references users(username));

create table itemOrders (itemID bigint(15) NOT NULL, orderID bigint(15) NOT NULL, quantity int(3) NOT NULL, refused bool NOT NULL,
notes varchar(100), reveived bool, Primary Key (itemID, orderID), Foreign Key (itemID) references items(itemID),
Foreign Key (orderID) references orders(orderID));