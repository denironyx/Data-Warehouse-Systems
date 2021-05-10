-- Create a new database
CREATE DATABASE demoDB;

-- Create a new table using Transact-SQL
USE demoDB
GO

CREATE Table dbo.Products
	(ProductID int PRIMARY KEY NOT NULL,
	ProductName varchar(25) NOT NULL,
	Price money NULL,
	ProductDescription varchar(max) NULL)
GO

-- Inserting Data into Table Using Transact-SQL (T-SQL)
USE demoDB
GO

INSERT INTO dbo.Products(ProductID, ProductName, Price, ProductDescription)

VALUES

	(1, 'Clamp', 12.48, 'Workbench clamp'),
	(2,	'Screwdriver', 7.99, 'Flat head'),
	(3,	'Tire Bar', 10.99, 'Tool for changing tires')

GO

-- Reading Data from a Table using T-SQL
USE demoDB
GO

SELECT ProductID, Products.ProductName, Products.Price, ProductDescription
	FROM Products
GO

-- Create a view
CREATE VIEW vm_Names
	AS
	SELECT ProductName, Price 
		FROM Products;
GO

--- Updating the Database
USE demoDB
GO

SELECT * FROM Products
GO

UPDATE dbo.Products
	SET ProductName = 'Flat Head Screwdriver'
	WHERE ProductID = 2
GO


-- BACKING UP DATABASE
USE demoDB

BACKUP DATABASE demoDB
TO DISK = 'C:\Users\Dee\root\Projects\personal_real_projects\Data-Warehouse-Systems\7. Transact SQL\demoDB_full.bak'
GO

-- Deleting DATA
USE demoDB

DELETE FROM Products
WHERE ProductID = 4

-- Truncate
USE demoDB
TRUNCATE TABLE Products;
GO

-- DROP a Database Table
USE demoDB
DROP TABLE Products;
GO