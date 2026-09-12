-- Data Digger ------------------------

CREATE DATABASE DataDigger;
use DataDigger;

-- Customer Table ----

create table Customers(
	CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

---- Insert Data-----

INSERT INTO Customers VALUES
(1, 'Swayam', 'swayam06@gmail.com', 'Surat'),
(2, 'Prince', 'prince11@gmail.com', 'Ahmedabad'),
(3, 'Vraj', 'vraj02@gmail.com', 'Vadodara'),
(4, 'Yaksh', 'yaksh22@gmail.com', 'Rajkot'),
(5, 'Venya', 'venya03@gmail.com', 'Surat'),
(6, 'Hitexa', 'hitu06@gmail.com', 'Surat'),
(7, 'Priya', 'pihuu052gmail.com', 'Jasdan'),
(8, 'jaydeep', 'jd0112@gmail.com', 'Rajkot'),
(9, 'Ajmal', 'ajmal0032gmail.com', 'Sundarpur'),
(10, 'Nemisha', 'nemii33@gmail.com', 'Surat'),
(11, 'Alice', 'alice@gmail.com', 'Surat'),
(12, 'Rahul', 'rahul@gmail.com', 'Ahmedabad'),
(13, 'John', 'john@gmail.com', 'Vadodara'),
(14, 'Alice', 'alice2@gmail.com', 'Rajkot'),
(15, 'Priya', 'priya@gmail.com', 'Surat');

--- Retrieve all Customers Details---
select * from Customers;


-- Update Customer Address ----
Update Customers set Address ='Bangluru' WHERE CustomerID=3;

--- Delete Customer using their CustomerID---
DELETE from Customers WHERE CustomerID=10;

--- Display all customers whose name 'Alice'---
select * from Customers WHERE name='Alice';




-- Order Table----
CREATE TABLE orderd (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID)
    REFERENCES customers(CustomerID)
);

-- Insert Values---
INSERT INTO orderd VALUES
(101, 1, '2026-09-01', 1500.00),
(102, 2, '2026-09-02', 2500.50),
(103, 3, '2026-09-03', 1200.00),
(104, 4, '2026-09-04', 3500.75),
(105, 5, '2026-09-05', 1800.00),
(106, 6, '2026-09-06', 2200.25),
(107, 7, '2026-09-07', 950.00),
(108, 8, '2026-09-08', 4100.00),
(109, 9, '2026-09-09', 2750.50),
(111, 11, '2026-09-11', 3000.00),
(112, 12, '2026-09-12', 1950.75),
(113, 13, '2026-09-13', 2700.00),
(114, 14, '2026-09-14', 3250.50),
(115, 15, '2026-09-15', 1450.00),
(116, 3, '2026-09-16', 1300.00);
    
---- Retrieve one specific customer---
select * from orderd WHERE CustomerID=3;

---- Update an order ----
update orderd SET TotalAmount = 2800 WHERE OrderID=101;

---- Delete order using orderid-----
delete from orderd WHERE OrderID=105;

---- Order placed in last 30 Days----
select * from orderd WHERE OrderDate >= CURDATE() - interval 30 DAY;

---- Highest, Lowest, and Average order amount using aggregate function ----
select max(TotalAmount) as Highest_Order from orderd;

select min(TotalAmount) as Lowest_Order from orderd;

select avg(TotalAmount) as Average_Order from orderd;



---- Product Tabel----
create table product(
	ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT 
);

---- Insert Products -----
INSERT INTO product VALUES
(1, 'Laptop', 55000.00, 10),
(2, 'Smartphone', 25000.00, 20),
(3, 'Keyboard', 1200.00, 50),
(4, 'Mouse', 700.00, 40),
(5, 'Monitor', 15000.00, 15),
(6, 'Headphones', 2500.00, 30),
(7, 'Printer', 8500.00, 8),
(8, 'USB Cable', 400.00, 60),
(9, 'Webcam', 3200.00, 12),
(10, 'Speaker', 4500.00, 18),
(11, 'Tablet', 18000.00, 10),
(12, 'Power Bank', 1500.00, 25),
(13, 'SSD', 6500.00, 14),
(14, 'Pendrive', 900.00, 35),
(15, 'Router', 2200.00, 20);

-- Display All records---
select * from product;

--- Retrieve product by descending order----
select * from product ORDER BY Price desc;

---- Update a Specific price ----
update product set Price=60000 WHERE ProductID=1;


---- Delete product if out of stocks ----
delete from product WHERE Stock=0 AND ProductID > 0;

---- Retrieve product between 500-2000 ----
select * from product WHERE Price between 500 AND 2000;

-- Most Expensive Product -----
select * from product WHERE Price=(SELECT MAX(Price) FROM product);

---- Cheapest Product -----
select * from product WHERE Price=(SELECt MIN(Price) FROM product);



-- OrderDetails Table ----
create table OrderDetails(
	OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    
    foreign key(OrderID)
    references Orderd(OrderID),
    
    foreign key(ProductID)
    references product(ProductID)
);

-- Insert records----
INSERT INTO OrderDetails VALUES
(1, 101, 1, 3, 165000.00),
(2, 102, 2, 4, 100000.00),
(3, 103, 3, 5, 6000.00),
(4, 104, 4, 6, 4200.00),
(5, 105, 5, 3, 45000.00),
(6, 106, 6, 4, 10000.00),
(7, 107, 7, 3, 25500.00),
(8, 108, 8, 5, 2000.00),
(9, 109, 9, 4, 12800.00),
(10, 111, 10, 3, 13500.00),
(11, 112, 11, 4, 72000.00),
(12, 113, 12, 5, 7500.00),
(13, 114, 13, 3, 19500.00),
(14, 115, 14, 6, 5400.00),
(15, 116, 15, 4, 8800.00);

-- Display Table--
select * from OrderDetails;


-- Retrieve Specific orders--
select * from OrderDetails WHERE OrderID=101;

-- Total Revenue---
select SUM(SubTotal) as Total_Rvenue from OrderDetails;

-- TOP 3 most ordered products--
select ProductID, SUM(Quantity) as Total_Quantity from OrderDetails group by ProductID order by Total_Quantity DESC LIMIT 3;

-- Count how many time product sold ---
select ProductID, count(*) as Times_Sold from OrderDetails WHERE ProductID=5 group by ProductID; 