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

