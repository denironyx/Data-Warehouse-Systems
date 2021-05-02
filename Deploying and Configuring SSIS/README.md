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