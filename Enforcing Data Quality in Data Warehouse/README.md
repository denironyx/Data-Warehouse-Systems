## Data Quality Services
SQL Server Data Quality Services(DQS) is a knowledge driven data quality product that enables you to build a knowledge base that can be used to perform variety of critical data quality tasks. Which includes:
-   Correction
-   Enrichment
-   Standardization
-   De-duplication
Data quality services also enables data cleansing by using cloud based reference data services, provided by reference data provider. You can perform profiling and analyzing the integrete of the data.

### Data Quality Services Components
-   Data Quality Server: is installed on top of the SQL Server Database Engine, and includes three databases:
    -   DQS_MAIN: Contains DQS stored procedures, the DQS engine, and published knowledge bases. 
    -   DQS_PROJECTS: Contains the data quality project information
    -   DQS_STAGING: Contains the staging area where you can copy your source data to perform DQS operations, and then export your processed data.
-   Data Quality Client: Is a standalone application that enables you to connect to Data Quality Server, and provides you with a highly-intuitive graphical user interface to perform data-quality operations and other administrative tasks related to DQS.

