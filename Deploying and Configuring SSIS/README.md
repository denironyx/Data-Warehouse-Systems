## Deploying and Configuring SSIS
### Integration Services Catalogs
Previous SSIS versions:
-   Packages are deployed one at a time
-   Deployed to msdb or file system
SSIS 2012 and Higher:
-   Deploy a project
-   Deploy to Integration service catalog

After settling up the Integration services catalog, next we want to set up the server-wide default logging Level

Server-wide Default Logging Level
-   None: Nothing is logged.
-   Basic: Logs all SSIS event types except onProgress, OnCustom Events are captured
-   Performance: OnError events and component phases information are captured.
-   Verbose: All SSIS events, component phases and component data statistic information are captured.

### Deploying SSIS Solutions

### Using SQL Server Agent to execute an ETL package
An SQL Server agent job is a unit of work in SQL Server agent. It's something that will be executed as a whole and connected to schedule or different schedule.

### Errors deploying my solution

```
TITLE: SQL Server Integration Services
------------------------------

A .NET Framework error occurred during execution of user-defined routine or aggregate "deploy_project_internal": 
System.Data.SqlClient.SqlException: The locale identifier (LCID) 8192 is not supported by SQL Server.
System.Data.SqlClient.SqlException: 
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnectionSmi.EventSink.DispatchMessages(Boolean ignoreNonFatalMessages)
   at System.Data.SqlClient.SqlDataReaderSmi.InternalNextResult(Boolean ignoreNonFatalMessages)
   at System.Data.SqlClient.SqlDataReaderSmi.NextResult()
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderSmi(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at Microsoft.SqlServer.IntegrationServices.Server.ServerConnectionControl.GetServerProperty(String propertyName)
   at Microsoft.SqlServer.IntegrationServices.Server.ServerConnectionControl.GetSchemaVersion()
   at Microsoft.SqlServer.IntegrationServices.Server.ISServerExecArgumentBuilder.ToString()
   at Microsoft.SqlServer.IntegrationServices.Server.ServerApi.DeployProjectInternal(SqlInt64 deployId, SqlInt64 versionId, SqlInt64 projectId, SqlString projectName)
. (Microsoft SQL Server, Error: 6522)

For help, click: http://go.microsoft.com/fwlink?ProdName=Microsoft%20SQL%20Server&ProdVer=15.00.2080&EvtSrc=MSSQLServer&EvtID=6522&LinkId=20476

------------------------------
BUTTONS:

OK
------------------------------

```

This link helped me fix it - http://www.vdwielen.net/2018/12/ssis-deployment-error-locale-id-lcid.html

### Execute a package with SQL Server Agent
-  Create new jobs, within the SQL Server Agent
   -  A job is basically a unit of work in SQL Server agent. It's executed as a whole and connected to a schedule or different schedule. 
-  Give the new job a name
-  Then provide the steps for `SQL Server Integration Service Package`  of the Reseller Package
-  Create new scheduele for the time the job can take place recurring