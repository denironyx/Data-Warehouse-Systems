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

### Cleansing data
It very common when we import data from morethan one source there is likely to be error in the data. This error could be anything.

The tool can make it easy to find that that doesn't match and infer some suggestions as well. With the option to approve or reject such changes. 

Data quality services can also be used to find duplicate data. When import data from multiple sources, we could end up with some of them being duplicates. 

- Imports can result in duplicate
- Records could be similar but not exact eg. same name but slightly different email or phone number. 

Data quality services can help us automate this process to help us find duplicate data.
