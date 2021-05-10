## Transact SQL
### What is T-SQL
1.  This Microsoft SQL Server's implementation of the standard SQL. 
2.  It has it's own proprietary extension in addition to the SQL standard. 
3.  T-SQL can be used to perform various types of actions on a Microsoft secure server database. 
4.  It can be used to create new databases, table and other objects. 
5.  It can be used to add user accounts, modify and manage access permissions. 
6.  It can be used to run various types of maintenance tasks on an obsure server
7.  Query database: retrieve data, insert records, update records, delete records from a database.
8.  It can be used to create stored procedure.

### Basic Database Concepts
- Database: Is a collection of organized information or data that is stored in a table
- Table: A table, on the other hand, stores information in rows and column. It stores a collection of related data entries in rows and columns
- Column: A column is a set of data values in a table.
- Row: is a record in a table. Each row in a database table is referred to as a record
- Schema: A schema is a collection of database objects.
- Primary Key: A primary key is a unique identifier, such as your driving license number or health insurance records. It is a unique identified that is used to identifier that is used to identify unique records so no two people can have the same records. 
- Foreign Key: A foreign key, on the other hand, is used is like a primary key to reference a primary key in another table. For example, if Table A has a primary key and Table B has a primary key, too. So you can have the primary key from table two acting as a foreign key in table one. Likewise, you can have the primary key in table two acting as a foreign key in table two. 
- Relational Database: is a database with related tables.
- Relational Database Management System (RDBMS): Is a software that manages database. e.g Oracle, Microsoft SQL, MYSQL

### What is CRUD
This is an accronym for:
- Create: Create objects like databases and tables
- Read: Retrieve and read records from database
- Update: Update existing records inside a database
- Delete: Delete records from the database
The CRUD is the most popular and basic operation that is performed on any database system.

### SQL Server Data Types:
A data type refers to the type of data that can be stored in a database table column. Examples includes
-   Strings(text): A string is basically a text
-   Date and Time
-   Numeric, and others

### Create a new Database USING T-SQL
```
CREATE DATABASE demoDB;
```

### Create a new Table using T-SQL
```
USE demoDB
GO

CREATE Table dbo.Products
	(ProductID int PRIMARY KEY NOT NULL,
	ProductName varchar(25) NOT NULL,
	Price money NULL,
	ProductDescription varchar(max) NULL)
GO
```
Note the Keyword GO separates statements when more than one statement is submitted in a single batch. Go is optional when the batch contains only on statement.

### Inserting Data into Table Using Transact-SQL (T-SQL)
```USE demoDB
GO

INSERT INTO dbo.Products(ProductID, ProductName, Price, ProductDescription)

VALUES

	(1, 'Clamp', 12.48, 'Workbench clamp'),
	(2,	'Screwdriver', 7.99, 'Flat head'),
	(3,	'Tire Bar', 10.99, 'Tool for changing tires')

GO
```
### Reading Data from a Table using T-SQL
```USE demoDB
GO

SELECT ProductID, Products.ProductName, Products.Price, ProductDescription
	FROM Products
    WHERE Price < 11
GO
```

### What is a View
-   A view is a virtual table based on the result-set of an SQL Statement. It contains row and columns just like real tables.
-   Views are stored SELECT statement that can be queried like tables.
-   View can consists of one or more tables.
-   Data in a view is usually up to date. 

```
-- Create a view
CREATE VIEW vm_Names
	AS
	SELECT ProductName, Price 
		FROM Products;
GO
```

### Stored Procedure
-   A stored procedure is one or more transact-sql statement that executes together as a batch. 
-   Stored procedure can have both input and output parameters.
-   They can contain statements to control the flow of the code.
-   Good practice in programming to use stored procedures for repetitive tasks in the database. 

```
CREATE PROCEDURE pr_Names @VarPrice money
	AS
	BEGIN
		-- The print statement returns text to the user
		PRINT 'Products less than ' + CAST(@VarPrice AS varchar(10));
		-- A second statement starts here
		SELECT ProductName, Price 
			FROM vm_Names
		WHERE Price < @VarPrice;
	END
GO

-- Test the stored procedure created
EXECUTE pr_Names 12.00;
GO
```

### Updating Data using T-SQL
```
--- Updating the Database
USE demoDB
GO

SELECT * FROM Products
GO

UPDATE dbo.Products
	SET ProductName = 'Flat Head Screwdriver'
	WHERE ProductID = 2
GO
```
NOTE: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated.

### Backing up a database
There are different types of database backups that can be performed on an SQL Server database.
- A full backup: It will backup the entire database including the transaction logs to begin.
NOTE: Always back up the database to a different drive than the actual database. Then, if you get a disk crash, you will not lose your backup file along with the database

```
USE demoDB

BACKUP DATABASE demoDB
TO DISK = 'C:\Users\Dee\root\Projects\personal_real_projects\Data-Warehouse-Systems\7. Transact SQL\demoDB_full.bak'
GO
```

### Deleting Data from a Data
```
-- Deleting DATA
USE demoDB

DELETE FROM Products
WHERE ProductID = 4
GO
```
NOTE: The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!

