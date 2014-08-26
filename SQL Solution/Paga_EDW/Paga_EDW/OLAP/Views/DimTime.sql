  

CREATE VIEW [OLAP].[DimTime]
AS

SELECT 
	[DimTime_7155936738159303249].[Code] AS [TimeCode]
	,[DimTime_7155936738159303249].[DimTimeID] AS [TimeDimTimeID]
	,[DimTime_7155936738159303249].[Name] AS [TimeName]
	,[DimTime_7155936738159303249].[SourceKey] AS [TimeSourceKey]
	,[DimTime_7155936738159303249].[sysCreatedBy] AS [TimesysCreatedBy]
	,[DimTime_7155936738159303249].[sysCreatedOn] AS [TimesysCreatedOn]
	,[DimTime_7155936738159303249].[sysModifiedBy] AS [TimesysModifiedBy]
	,[DimTime_7155936738159303249].[sysModifiedOn] AS [TimesysModifiedOn]
FROM [Shared].[DimTime] AS [DimTime_7155936738159303249]



    