# Part 2 -  Creating an ETL Solution with SSIS

## What is ETL
Extract, Transform and Load(ETL) is a data pipeline used to collect data from various sources, transform the data according to business rules, and load it into a destination data store or warehouse. 

= Extract data from homegenous or heterogenous data source, that means you can extract data from one source or from several sources.

- Transforms the data for storing it in proper format, because when you extract data from different source they might be in different format. You can use the transform process to transform the data into a proper format according to your business requirement.

- Loads it into the final target e.g data warehouse or data store.

### ETL Process 
1. Data Source
2. Staging area
3. Transformation
4. Repository
5. Load
6. Data store

The data transformation that takes palce usually involves various operations, which include filtering, aggregating, sorting, and joining data, cleaning, duplicate and validating the data. 

### SQL Server Integration Services (SSIS)
- It ia a platform for building enterprise level data integration and data transformation solutions. 
- With SSIS, you can help solve complex business problems by copying or downloading the files, sending email messages in response to events.
- Can be used for updating data warehouses
- Can be used for cleaning and mining data
- Managing SQL Server Objects and data
- The packages of SSIS can work alone or work in connection with other packages to address complex business problem or requirement.
- SSIS can extract, and transform data from a wide variety of sources, such as XML data, flat file, relational databases. And then they can load the data they've collected into one or more destinations.
- It includes a set of built in task and transformation tools that they use for constructing packages and integration services, which is used for running and managing packages.
- It comes with a graphical integration tool, which can be used to create solution without writing a single line of code if you prefer to write code you are welcome to do so. 

### Using ETL with SSIS
When setting up a data warehouse for the first time, a lot of the work is in the designing and building of the table structure that will hold the data. Once that's done, it typically doesn't change very often and therefore there's not a lot of maintenance work required.

ETL is a very important part in the data warehouse process. The actual ETL process sometimes can be subjected to some changes and some maintenance based on data changes as well. So, when there is a change in data, the ETL process will react accordingly to those changes.

A lot of the day to day work of the data warehouse administrator actually involves the ETL process. 

For this project we will be using SSIS to create our ETL process. SSIS is a tool developed by Microsoft and SQL Server Integration Services is actually managed by another tool called SQL Server Data Tools. This tool integrates with Visual Studio, and it's used to build business intelligence solutions.

### Creating a new SSIS Project

### Exploring Data Source
When we have a new that source that we need to integrate into our solution there are some questions that needs to be asked about the data, which include:

- What Data types are being used?
- How often is a column null?
- How often does a column have small or large value

SSIS has some tools that can help us explore the data and answer these type of questions.