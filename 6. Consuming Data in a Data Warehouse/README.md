## Introduction to Business Intelligence => BI
Business intelligence is a very old concept it dates back to over 150 years Old. Which was once originally defined as gaining a competitive advantage by ability to gather information more quickly than your competitor.

Business intelligence definition varies from one vendor to another, each of them trying frame the problem that their product can solve. There are some characteristics among all the definition of BI which include:
-   Find useful information in raw data
-   Use data to support operational decisions
-   Measure health and success of business
-   Perform simulations on data to predict future outcome

Data Source for Business Intelligence
-   Real time stream - stock market
-   Individual documents (rare and time consuming)
-   Transactional database : Won't perform very well, when report are being run in the database.
-   Data Warehouse - Business intelligence solution needs to involve data warehouse.

Noted: Having a data warehouse doesn't give us a complete business intelligence solution needs 

-   Reporting: Microsoft SQL Server Reporting Services - SSRS
-   Analysis: Microsoft SQL Server Analysis Services - SSAS

### SSRS - SQL Server Reporting Services
Here I will be creating a basic report and I'm going to do that based on a view. So, what I will be doing first is create the view in the data warehouse. The project created is in `Consuming Data in a Data Warehouse/ReportInternetSales` folder.

### SSAS - SQL Server Analysis Services
I will start by creating a data cube - A data cube is a three dimensional or four dimensional or even five dimensional structure that stores facts organized by dimension. It also allows for the quick retrieval of the data and some increased performance in processing basic mathematical functions like SUM's averages, minimums and maximums.

The arrow of a data cube are representing the relationship between the tables.
Error
```
Severity	Code	Description	Project	File	Line	Suppression State Error		The project could not be deployed to the 'DENNIS\SQLSERVER2019' server because of the following connectivity problems : A connection cannot be made to redirector. Ensure that 'SQL Browser' service is running. To verify or update the name of the target server, right-click on the project in Solution Explorer, select Project Properties, click on the Deployment tab, and then enter the name of the server.			0
```
- Trouble shoot error - https://jimsalasek.com/2017/08/31/how-to-install-ssas-sql-server-analysis-services/