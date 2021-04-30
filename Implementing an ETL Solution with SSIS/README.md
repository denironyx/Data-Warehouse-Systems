## Implementing an Incremental ETL Process

### Introduction to Incremental ETL Process
Rather than have an ETL process that runs as one huge process. It's advisable to break it down into smaller process, which are easier to maintain and troubleshoot. Here are the steps to do so:

- Create one Package for each data source: If you are importing 5 different data source into a data warehouse, you are expected to build 5 different packages with each package representing a data source.

- Separate packages for each step: This means you will have one package that does all of the Extract from various data source, all of the Transform and Loading of the data. 

### Extracting Modified Data
When we extract data from a data source, we sometime want all of the records from that source, however, is common that we only want the records that been modified since the last time we did an extract.

There are three techniques of how we can determine which records that have been changed since the last extraction.

- Adding a Datetime column to every table and use that datetime column to track when the last time the record was changed. This can be done using triggers or stored procedures to make sure you have accurate information in the last update column.
- Change data capture: Using the SQL data agent to write data 
- Change tracking