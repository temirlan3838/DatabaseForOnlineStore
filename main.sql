create database dbms1As3;
EXECUTE master.dbo.sp_helpdb 'dbms1As3'

GO
create table Customer (
	UserID INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(50) NOT NULL,
	MiddleName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NUll,
	Email VARCHAR(50) NOT NULL,
	Password VARCHAR(50) NOT NULL, 
	Gender VARCHAR(50) NOT NULL, 
	CreatedDate DATETIME NOT NULL,
	LastLoginDate DATETIME NOT NULL,
	Age INT NOT NULL
);
INSERT INTO Customer
VALUES (1, 'Beatrice', 'Erlinda', 'Allan', '(717) 718-5522', 'beatrice.allan92@gmail.com', 'hvwkUTpx', 'Male', '2019-04-12 18:36:12', '2019-06-14 20:37:13', 35),
 (2, 'Viktoria', 'Hisako', 'Mcloughlin', '(748) 270-6509', 'viktoria.mcloughlin69@gmail.com', 'IwWOv&De', 'Female', '2019-03-07 14:29:05', '2020-09-24 07:22:48', 24),
 (3, 'Romilly', 'Felecia', 'Rubio', '(765) 368-6295', 'romilly.rubio48@gmail.com', 'fkwC2YOp', 'Female', '2019-07-17 08:28:39', '2020-09-27 14:59:41', 45),
 (4, 'Makayla', 'Eveline', 'Mccormick', '(933) 815-0613', 'makayla.mccormick68@gmail.com', 'Z2MFNLBg', 'Female', '2019-01-12 21:20:13', '2020-03-25 21:12:04', 27),
 (5, 'Reef', 'Cherise', 'Collier', '(866) 842-4046', 'reef.collier13@gmail.com', 'TssrZRFU', 'Female', '2019-07-30 17:49:35', '2020-11-09 15:31:04', 30),
 (6, 'Isa', 'Millard', 'Wilks', '(546) 535-2498', 'isa.wilks59@gmail.com', 'VBNtRlfb', 'Male', '2019-06-20 06:12:33', '2020-08-30 23:50:50', 25),
 (7, 'Inaaya', 'Charlott', 'Mcdonald', '(861) 474-2205', 'inaaya.mcdonald22@gmail.com', 'vhdtWbHS', 'Male', '2019-04-03 23:41:25', '2020-03-26 19:08:35', 25),
 (8, 'Oscar', 'Lorean', 'Allen', '(672) 473-4270', 'oscar.allen27@gmail.com', 'KVPiapp0', 'Female', '2019-08-05 07:58:26', '2020-10-25 15:41:19', 37),
 (9, 'Elen', 'Rooney', 'Sosa', '(870) 259-2489', 'elen.sosa82@gmail.com', 'ZioloZu0', 'Male', '2019-12-02 02:28:49', '2020-09-12 14:27:11', 26),
 (10, 'Sol', 'Currier', 'Mccoy', '(596) 347-9246', 'sol.mccoy19@gmail.com', 'hEEKsut3', 'Female', '2019-11-08 04:37:11', '2020-10-19 03:03:42', 49);


select * from Customer

create table Products (
	ProductID INT  NOT NULL PRIMARY KEY,
	name VARCHAR(250) NOT NULL
);
insert into Products
values (1, 'n1'),
(2, 'n2')
select * from Products;
drop table Products

create table Product (
	ProductID INT NOT NULL PRIMARY KEY,
	Title VARCHAR(250) NOT NULL,
	Price FLOAT NOT NULL, 
	UpdatedDate DATETIME NULL,
	Discount INT NOT NULL,
);
select * from Product


drop table Product;

-- CREATE DATABASE CarShop;

CREATE TABLE Customers(
    SSN VARCHAR(255) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    date DATE NOT NULL
);

INSERT INTO Customers 
VALUES ('990201451326', 'Aibarov Miras', '21', '1999-02-01'),
       ('981212362327', 'Alymov Marat', '22', '1998-03-15'),
       ('851204163254', 'Merey Mariyam', '35', '1985-12-04'),
       ('970514302154', 'Berik Aisha', '23', '1997-05-14');

INSERT INTO Product
VALUES (1, 'Red Mickey Matching Family Mens Christmas Mickey Mouse Jumper', 14050, NULL, 21),
	(2, 'Black Roll Neck Jumper', 9370, NULL,  14),
	(3, 'Plum Roll Neck Jumper', 9250,  NULL, 16),
	(4, 'Grey Fairisle Pattern Matching Jumper', 11710, NULL, 47),
	(5, 'Green Roll Neck Jumper', 9370, NULL, 12),
	(6, 'Blue Mock Shirt Jumper', 14050,  NULL, 64),
	(7, 'Mens Christmas Jumper', 11710,  NULL, 75),
	(8, 'Mock Shirt Jumper', 14050, NULL, 5),
	(9, 'Threadbare Reindeer Quarter Zip Christmas Jumper', 9970, NULL, 26),
	(10, 'Dark Mens Christmas Jumper', 10930, NULL,  17);





SET IDENTITY_INSERT Product off;
DBCC CHECKIDENT ('Product', RESEED,10)

DELETE FROM Product where ProductId = 11
drop TABLE Product


create table Product_Review( 
	ProductReviewID INT NOT NULL PRIMARY KEY,
	ProductID INT NOT NULL FOREIGN KEY REFERENCES Product(ProductID),
	Rating INT NOT NULL DEFAULT 0,
	CreatedTime DATETIME NOT NULL,
	Comment VARCHAR(255) NULL,
);
drop TABLE Product_Review;
INSERT INTO Product_Review
VALUES  (1, 3, 25, '2020-04-21 19:54:00', 'good'),
        (2, 6, 24, '2020-11-26 21:58:03', 'nice'),
        (3, 2, 20, '2020-02-13 23:24:19', 'bad'),
        (4, 4, 10, '2020-03-08 09:26:42', 'satisfactory'),
        (5, 1, 30, '2020-09-03 06:12:38', 'not satisfactory'),
        (6, 7, 26, '2020-08-07 04:02:12', 'comfortable'),
        (7, 9, 27, '2020-07-25 16:26:14', 'not comfortable'),
        (8, 2, 15, '2020-02-18 14:36:59', 'i choose it'),
        (9, 10, 2, '2020-06-24 12:35:25', 'i dont choose it'),
        (10, 5, 5, '2020-12-26 22:42:42', 'very good');
        select * from Product_Review

insert into Product_Review
VALUES (1, 2, 25, '2020-04-21 19:54:00', 'good')
delete from Product_Review;
create table Category ( 
	CategoryID INT NOT NULL PRIMARY KEY,
	Title VARCHAR(50) NOT NULL,
	Details VARCHAR(255) NULL,
);
INSERT INTO Category
VALUES  (1,'Consumer Products' , '100+'),
        (2,'Convenience Products', '90+'),
        (3,'Shopping Products', '55+'),
        (4,'Speciality Products', '160+'),
        (5,'Office Products', '10+'),
        (6,'Unsought Products', '130+'),
        (7,'Electron Products', '100+'),
        (8,'Unsought Products', '130+'),
        (9,'Convenience Products', '90+'),
        (10,'Industrial Products', '100+');
        select * from Category;

create table Product_Category (
	ProductID INT NOT NULL FOREIGN KEY REFERENCES Product(ProductID),
	CategoryID INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
	PRIMARY KEY (ProductID, CategoryID)
);
drop table Product_Category;
INSERT INTO Product_Category
VALUES  (1, 10),
        (2, 9),
        (3, 8),
        (4, 7),
        (5, 6),
        (6, 5),
        (7, 4),
        (8, 3),
        (9, 2),
        (10, 1);
        select * from Product_Category

SET IDENTITY_INSERT Basket_Product off;
create table Basket_Product ( 
	BasketProductId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ProductID INT NOT NULL FOREIGN KEY REFERENCES Product(ProductID),
    UserID INT NOT NULL FOREIGN KEY REFERENCES Customer(UserID),
    Quantity INT NOT NULL
);
drop table Basket_Product;

SET IDENTITY_INSERT Product off;
INSERT INTO Basket_Product
VALUES  ( 2, 3, 4),
        ( 1, 2, 21),
        ( 2, 1, 20),
        ( 4, 10, 12),
        ( 7, 9, 14),
        ( 1, 8, 5),
        ( 1, 6, 10),
        ( 10, 7, 40),
        ( 3, 4, 1),
        ( 5, 5, 7);
        select * from Basket_Product;

INSERT into Basket_Product
VALUES (5,5,7)

DBCC CHECKIDENT ('Basket_Product', RESEED, 9) 
DELETE FROM Basket_Product where BasketProductId = 12

create table Status (
    	StatusID INT NOT NULL PRIMARY KEY,
    	Status_Information VARCHAR(250) NOT NULL
);
INSERT INTO Status
VALUES  (1,'not available'),
        (2,'not available'),
        (3,'not available'),
        (4,'available'),
        (5,'available'),
        (6,'not available'),
        (7,'not available'),
        (8,'available'),
        (9,'not available'),
        (10,'available');
        select * from Status;

create table Promocodes (
    	Promo INT NOT NULL PRIMARY KEY,
    	Sale_Information VARCHAR(50) NOT NULL
);

INSERT INTO Promocodes
VALUES  (1,'40% sale'),
        (2,'20% sale'),
        (3,'30% sale'),
        (4,'10% sale'),
        (5,'15% sale'),
        (6,'25% sale'),
        (7,'5% sale'),
        (8,'50% sale'),
        (9,'60% sale'),
        (10,'70% sale');
        select * from Promocodes

create table Orders (
	OrderID	INT NOT NULL PRIMARY KEY,
	UserID INT NOT NULL FOREIGN KEY REFERENCES Customer(UserID),
	StatusID INT NOT NULL FOREIGN KEY REFERENCES Status(StatusID),
	Promo INT NOT NULL FOREIGN KEY REFERENCES Promocodes(Promo),
    AddressID INT NOT NULL FOREIGN KEY REFERENCES Address(AddressID),
	FirstName VARCHAR(50) NOT NULL,
	MiddleName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	TotalOfProducts FLOAT NOT NULL,
	ProductDiscount INT NOT NULL,
	Tax FLOAT NOT NULL, 
	Shipping FLOAT NOT NULL,
	TotalDiscount INT NOT NULL, 
	Total FLOAT NOT NULL,
	Phone VARCHAR(255) NOT NULL,
	Email VARCHAR(50),
	City VARCHAR(50) NOT NULL,
	State VARCHAR(50) NOT NULL,
	Country VARCHAR(50) NOT NULL,
	CreatedTime DATETIME NOT NULL,
	UpdatedTime DATETIME NULL, 
	Details VARCHAR(250) NOT NULL
);


INSERT INTO Orders
Values (1, 2, 2, 8, 1, 'Nojus' , 'Peralta' , 'Li', 19900 , 10 , 0, 1000, 1990, 18910, '(403) 780-5573', 'nojus.li88@gmail.com', 'Almaty' , 'Auez' , 'Kazakhtan', '2020-09-09 01:14:08', NULL, 'Empty'),
		(2, 7, 6, 6, 6, 'Macauly' , 'Herring' , 'Chavez', 5990 , 0, 0, 1000, 0, 6990, '(458) 897-8640', 'macauly.chavez45@gmail.com', 'Moskow' , 'Irkutsk' , 'Russia', '2020-01-10 16:18:21', NULL, 'Empty'),
		(3, 1, 4, 9, 3, 'Kai' , 'Nielsen' , 'Butt', 7890 , 0, 0, 1000, 0, 8890, '(229) 333-2004', 'kai.butt78@gmail.com', 'Rio' , 'Alagoas' , 'Brazil', '2020-01-16 00:58:30', NULL, 'Empty'),
		(4, 4, 2, 6, 8, 'Layton' , 'French' , 'House', 8990, 0, 0, 1000, 0, 9990, '(271) 279-6804', 'layton.house55@gmail.com', 'Bayern' , 'Freostaat' , 'German', '2020-10-29 01:32:35', NULL, 'Empty'),
		(5, 4, 1, 9, 2, 'Frederic' , 'Newman' , 'Underwood', 7850, 0, 0, 1000, 0, 8850, '(727) 912-1515', 'frederic.underwood10@gmail.com', 'Rome' , 'Teramo' , 'Italy', '2020-01-22 12:55:11', NULL, 'Empty'),
		(6, 8, 2, 5, 7, 'Imaani' , 'Haas' , 'Sanford', 5660, 0, 0, 1000, 0, 6660, '(424) 862-5647', 'imaani.sanford39@gmail.com', 'Barselona' , 'Madrid' , 'Spain', '2020-01-04 00:43:59', NULL, 'Empty'),
		(7, 6, 3, 6, 2, 'Alison' , 'Samuels' , 'Hall', 15570, 0, 0, 1000, 0, 16570, '(804) 474-3467', 'alison.hall99@gmail.com', 'Salta' , 'Buenos Aeros' , 'Argentina', '2020-08-09 09:22:04', NULL, 'Empty'),
		(8, 9, 7, 8, 6, 'Rafi' , 'Burt' , 'Shaw', 57880, 0, 0, 1000, 0, 58880, '(372) 774-9328', 'rafi.shaw77@gmail.com', 'NW' , 'Munaka' , 'America', '2020-03-15 11:03:58', NULL, 'Empty'),
		(9, 1, 3, 2, 2, 'Bonita' , 'Ratcliffe' , 'Martinez', 4560, 0, 0, 1000, 0, 5660, '(669) 735-1263', 'bonita.martinez85@gmail.com', 'Whuhan' , 'Hainan' , 'China', '2020-09-17 02:33:05', NULL, 'Empty'),
		(10, 4, 9, 6, 4, 'Miriam' , 'Moon' , 'Gomez', 7850, 0, 0, 1000, 0, 8850, '(346) 799-8201', 'miriam.gomez66@gmail.com', 'Bishkek' , 'Talas' , 'Kyrgystan', '2020-09-22 19:26:56', NULL, 'Empty');

select * from orders
create table Orders_Product ( 
	OrderProductID INT NOT NULL PRIMARY KEY,
	ProductID INT NOT NULL FOREIGN KEY REFERENCES Product(ProductID),
	OrderID INT NOT NULL FOREIGN KEY REFERENCES Orders(OrderID),
    Quantity INT NOT NULL
);
drop table Orders_Product
INSERT INTO Orders_Product
VALUES  (1, 5, 2, 4),
        (2, 6, 3, 31),
        (3, 2, 10, 22),
        (4, 4, 1, 10),
        (5, 1, 9, 60),
        (6, 10, 8, 54),
        (7, 8, 6, 15),
        (8, 7, 7, 20),
        (9, 2, 4, 15),
        (10, 5, 5, 7);
        select * from Orders_Product

drop TABLE Orders_Product;
INSERT INTO ZIP
VALUES  (1, 2, 3, 4),
        (2, 1, 2, 3),
        (3, 2, 1, 2),
        (4, 4, 10, 1),
        (5, 7, 9, 6),
        (6, 8, 8, 5),
        (7, 8, 6, 10),
        (8, 10, 7, 9),
        (9, 3, 4, 8),
        (10, 5, 5, 7);


create table Address (
    AddressID INT NOT NULL PRIMARY KEY,
    UserID INT NOT NULL FOREIGN KEY REFERENCES Customer(UserID),
    ZIPCode INT NOT NULL FOREIGN KEY REFERENCES ZIP(ZIPCode),
    Street VARCHAR(50) NOT NULL
);
INSERT INTO Address
VALUES  (1, 1, 3, 'AbylayKhan street'),
        (2, 6, 2, 'Tverskaya street'),
        (3, 2, 3, 'Avenida Mem street'),
        (4, 7, 9, 'Tegernsee street'),
        (5, 4, 10, 'Via Condotti street'),
        (6, 9, 6, 'La Rambla street'),
        (7, 8, 8, 'Subcategories street'),
        (8, 10, 7, 'Walla Walla street'),
        (9, 3, 1, 'Wangfujing Street street'),
        (10, 5, 5, 'Chuy street');
select * from Address;

create  table ZIP (
    ZIPCode INT NOT NULL PRIMARY KEY,
    ProvinceID INT NOT NULL FOREIGN KEY REFERENCES Province(ProvinceID),
    CityID INT NOT NULL FOREIGN KEY REFERENCES City(CityID),
    CountryID INT NOT NULL FOREIGN KEY REFERENCES Country(CountryID)
);

INSERT INTO ZIP
VALUES  (1, 2, 3, 4),
        (2, 1, 2, 3),
        (3, 2, 1, 2),
        (4, 4, 10, 1),
        (5, 7, 9, 6),
        (6, 8, 8, 5),
        (7, 8, 6, 10),
        (8, 10, 7, 9),
        (9, 3, 4, 8),
        (10, 5, 5, 7);

        select * from ZIP;

create  table City (
    CityID INT NOT NULL PRIMARY KEY,
    CityName VARCHAR(50) NOT NULL
);

create table Transactions (
	TransactionID INT NOT NULL PRIMARY KEY,  
	UserID INT NOT NULL FOREIGN KEY REFERENCES Customer(UserID),
	OrderID INT NOT NULL FOREIGN KEY REFERENCES Orders(OrderID),
	StatusID INT NOT NULL FOREIGN KEY REFERENCES Status(StatusID),
	Code VARCHAR(100) NOT NULL,
	Type VARCHAR(250) NOT NULL,
	Mode VARCHAR(250) NOT NULL,
	Createdtime DATETIME NOT NULL,
	Updatedtime DATETIME NULL,
	Details VARCHAR(250) NOT NULL
);

INSERT INTO Transactions
Values (1, 6, 3, 5, '38067907', 'debit', 'online', '2020-02-06 18:05:16', NULL, 'Empty'),
	(2, 5, 3, 1, '74564503,', 'credit', 'online', '2020-06-21 04:10:21', NULL, 'Empty'),
	(3, 8, 3, 7, '12853796', 'credit', 'online', '2020-02-23 16:32:46', NULL, 'Empty'),
	(4, 6, 3, 1, '80726627', 'debit', 'online', '2020-01-18 07:50:48', NULL, 'Empty'),
	(5, 4, 9, 5, '18460589', 'credit', 'online', '2020-01-24 10:39:41', NULL, 'Empty'),
	(6, 5, 6, 7, '38539776', 'debit', 'online', '2020-07-06 02:22:19', NULL, 'Empty'),
	(7, 8, 2, 6, '78146391', 'debit', 'online', '2020-08-24 04:45:33', NULL, 'Empty'),
	(8, 5, 8, 4, '89840870', 'credit', 'online', '2020-07-26 10:14:52', NULL, 'Empty'),
	(9, 9, 4, 8, '44954413', 'debit', 'online', '2020-07-10 03:15:05', NULL, 'Empty'),
	(10, 3, 4, 8, '73292623', 'credit', 'online', '2020-01-29 23:22:59', NULL, 'Empty');

select * from Transactions


INSERT INTO City
VALUES  (1, 'Almaty'),
        (2, 'Moskow'),
        (3, 'Rio'),
        (4, 'Bayern'),
        (5, 'Rome'),
        (6, 'Barselona'),
        (7, 'Salta'),
        (8, 'NW'),
        (9, 'Whuhan'),
        (10, 'Bishkek');
        select * from city

create  table Province (
    ProvinceID INT NOT NULL PRIMARY KEY,
    ProvinceName VARCHAR(50) NOT NULL
);

INSERT INTO Province
VALUES  (1, 'Auez Province'),
        (2, 'Irkutsk Province'),
        (3, 'Alagoas Province'),
        (4, 'Freistaat Province'),
        (5, 'Teramo Province'),
        (6, 'Madrid Province'),
        (7, 'Buenos Aeros Province'),
        (8, 'Munaka Province'),
        (9, 'Hainan Province'),
        (10, 'Talas Province');
select * from Province;

create  table Country (
    CountryID INT NOT NULL PRIMARY KEY,
    CountryName VARCHAR(50) NOT NULL
);

INSERT INTO Country
VALUES  (1, 'Kazakstan'),
        (2, 'Russia'),
        (3, 'Brazil'),
        (4, 'German'),
        (5, 'Italy'),
        (6, 'Spain'),
        (7, 'Argentina'),
        (8, 'America'),
        (9, 'China'),
        (10, 'Kyrgyzstan');

exec sp_fkeys Product;


select * from Product;
select * from Customer;
select * FROM Status;
select * from Promocodes;
select * FROM Orders;
select * from Orders_Product;
select * from Product_Review;
select * from Category;
select * from Product_Category;
select * FROM Basket_Product;
select * from Country;
select * from Province;
select * from City;
select * from ZIP;
select * from Address;
select * from Transactions;