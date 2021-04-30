## Implementing an Incremental ETL Process

### Introduction to Incremental ETL Process
Rather than have an ETL process that runs as one huge process. It's advisable to break it down into smaller process, which are easier to maintain and troubleshoot. Here are the steps to do so:

- Create one Package for each data source: If you are importing 5 different data source into a data warehouse, you are expected to build 5 different packages with each package representing a data source.

- Separate packages for each step: This means you will have one package that does all of the Extract from various data source, all of the Transform and Loading of the data. 
