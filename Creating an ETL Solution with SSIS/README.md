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

### Introduction to Control flow in SSIS
I worked on a control flow project using the loop container in SSIS.

Also, checked out the foreach loop in SSIS

Conditional statements is being declared using the expression task. With this you can implement and if then logic in SQL Server

In a control flow an arrow basically is a precedent constraint. It controls what task runs after the current task based on success or failure

### Implementing Data flow with SSIS
The Data Flow Task will enable me accomplish different tasks. With all of these task basically focuses on extracting, transforming or loading data.

Every data flow task requires a source and a destination. In other words, its going to require a place to pull the data out of and the place to insert the data to.

In Data flow the arrow represents data flowing from one task to another. The Blue arrow represents good data(data that was successfully read or transformed), while the RED arrow represent bad data or data that there have been an error in. 

In some ETL process you only need to insert new rules, that is in areas where data may have changed. In orther situations you may have to delete everything that's in the table and completely reload the data. In this project we are going to Truncate a table and reload the data. The table Truncated will be reload from the flat file source.

### Debugging SSIS Package
- Setting break points in the Control Flow area

Data flow tab doesn't have the concept of breakpoint. But, it can allow use see the data as it is flowing, causing the machine to pause while we view it as it is flowing. Which can be done by enabling the data viewer.

### Logging SSIS Package event
Logging is an important part of the overall data warehouse strategy. Since, it can start the ETL process automatically at a certain schedule time every day or week.

So, when that package is running and there are issues, there are way one can detect or read a log to see what has gone wrong. Where there have been successes or failures. 

We basically need a log that will capture everything as the package runs. This can be done using the SSIS >> logging features which creates the log of all the event.