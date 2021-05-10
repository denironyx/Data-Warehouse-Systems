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
USE demoDB
GO

INSERT INTO dbo.Products(ProductID, ProductName, Price, ProductDescription)

VALUES

	(1, 'Clamp', 12.48, 'Workbench clamp'),
	(2,	'Screwdriver', 7.99, 'Flat head'),
	(3,	'Tire Bar', 10.99, 'Tool for changing tires')

GO