  

CREATE VIEW [OLAP].[DimDate]
AS

SELECT 
	[DimDate_8236128330385451862].[Code] AS [DateCode]
	,[DimDate_8236128330385451862].[DimDateID] AS [DateDimDateID]
	,[DimDate_8236128330385451862].[Name] AS [DateName]
	,[DimDate_8236128330385451862].[SourceKey] AS [DateSourceKey]
	,[DimDate_8236128330385451862].[sysCreatedBy] AS [DatesysCreatedBy]
	,[DimDate_8236128330385451862].[sysCreatedOn] AS [DatesysCreatedOn]
	,[DimDate_8236128330385451862].[sysModifiedBy] AS [DatesysModifiedBy]
	,[DimDate_8236128330385451862].[sysModifiedOn] AS [DatesysModifiedOn]
FROM [Shared].[DimDate] AS [DimDate_8236128330385451862]



    