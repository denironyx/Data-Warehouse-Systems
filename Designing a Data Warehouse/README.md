# Designing a Data Warehouse

## What is a Data Warehouse

## OLTP Database vs Data Warehouse

## Data Warehouse vs Enterprise Data Warehouse

## Configure Database Settings for Data Warehouse

## Logical Design of Data Warehouse
A typical data warehouse consists of two main types of tables: 

- Fact table contains a measurement of the business process. Alway involves money -  The fact table can track things like sales,
- Dimension table (time, location)  used for filtering, grouping and sorting data.

The most common example of a fact table is Money, since a company obviously wants to measure the profit. You can have a fact table of profit, revenue and expenses.(Money is the key in a fact table).

The most common example of a dimension table is time and location. Many reports generated will be for a week, a month, a quarter, a year. It's important to have a record of time based facts happened and the way to sort, filter and search by time. Many businesses also keep track of things by location any time our business process can occur at more than one location. E.g we can make sales at different stores at different locations. We will typically want to track that process and we may want to potentially run reports that are potentially sorted, filtered or grouped by location.

You can use a data warehouse to asertain how much does a company earn last month from, your New York store or a Store in London. This is a type of question that a warehouse should be able to answer from the data it has collected.

## Physical Design of Data Warehouse
-- Diagram
Lets find the relationship between the Sales Territory table and Geography table

The relationship between the SalesTerritory table and Geography table is the SalesTerritoryKey column.

Inorder to know what city or territory that sales happens, we will need to look at both the SalesTerritory table and Geography Table. But, what we can do is to create a view to make that easier.

Aggregating data help us easily look at things like, for example, the total for sales profit revenue expenses. Doing so, prevents us from looking at the data line by line. So, creating view saves us time.

Creating View in its own self doesn't improve SQL performance, except when an index is created of the view. Indexes improves the performance of the query that runs. 
## Designing Dimension Tables