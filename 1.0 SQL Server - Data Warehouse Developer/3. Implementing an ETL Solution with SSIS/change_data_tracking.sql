USE [AdventureWorksDW2014]

ALTER DATABASE AdventureWorkDW2014
SET CHANGE_TRACKING  = ON
(CHANGE_RETENTION = 2 DAYS, AUTO_CLEANUP = ON);

ALTER TABLE [dbo].[DimAccount]
ENABLE CHANGE_TRACKING
WITH (TRACK_COLUMNS_UPDATED = ON);