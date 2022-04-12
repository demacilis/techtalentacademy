-- Create a relational database (2 tables)
CREATE DATABASE shop;

USE shop;

-- CREATE TABLE 1 - CUSTOMER DETAILS
CREATE TABLE Items( 
ItemID INT NOT NULL,
ItemName VARCHAR (20) NOT NULL, 
ItemNumber INT NOT NULL,
Price INT NOT NULL,
PRIMARY KEY (ItemID)
);

EXPLAIN Items;

INSERT INTO Items (ItemID, ItemName, ItemNumber, Price)
VALUES ('1', 'RAM', '2305', '10'),
('2', 'MOTHERBOARD', '0045', '100'),
('3', 'GPU', '1205', '1000'),
('4', 'SOUNDBOARD', '0453', '50'),
('5', 'HDD', '5304', '40'),
('6', 'PSU', '3245', '25'),
('7', 'MICROPHONE', '7852', '10'),
('8', 'COOLING UNIT', '3205', '50'),
('9', 'NETWORK CARD', '0070', '20'),
('10', 'CASE', '5632', '20');

-- Update a record
SELECT * FROM Items;

UPDATE Items
SET ItemName = 'CPU'
WHERE ItemNumber = 1205;

-- Delete a record
SELECT * FROM Items;

DELETE FROM Items 
WHERE ItemNumber ='7';

-- CREATE TABLE 2 - ORDER DETAILS
CREATE TABLE Customers(
OrderNumber INT NOT NULL, 
CustomerNumber INT NOT NULL,
City VARCHAR (20) NOT NULL, 
Country VARCHAR (20) NOT NULL, 
PostalCode INT NOT NULL,
PRIMARY KEY (OrderNumber)
);

EXPLAIN Customers;

INSERT INTO Customers (OrderNumber, CustomerNumber, City, Country, PostalCode)
VALUES ('1','1', 'Stavanger', 'Norway', '50320'),
('2','2', 'Phoenix', 'USA', '80910'),
('3','3', 'Gdansk', 'Poland', '40115'),
('4','4', 'Malmo', 'Sweden', '12320'),
('5','5', 'Reyikjavik', 'Iceland', '92310'),


-- Update a record
SELECT * FROM Items;

UPDATE Items
SET Price = 40
WHERE ItemName = 'SOUNDBOARD';

-- Delete a record
SELECT * FROM Items;

DELETE FROM Items
WHERE ItemID ='10';

-- Join tables
SELECT Items.ItemID, Items.ItemName, Items.Price
FROM Items
INNER JOIN Items ON Customers.CustomerNumber=Items.ItemID;

-- Run a simple query (one field/column) searching one table.
SELECT * FROM Items
WHERE Price = 20;

-- Run a complex query (more than one field/column) to demonstrate the relations between the 2 tables
SELECT * FROM Items
WHERE ItemName = "HDD" AND OrderPrice = 40;

-- Retrieve all your data sorted in ascending order on an appropriate field (one table)
SELECT * FROM Customers
ORDER BY Country;

-- Filter data using comparison operators (one table)
SELECT OrderNumber FROM Items WHERE OrderPrice = '50';