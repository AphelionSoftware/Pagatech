  

CREATE VIEW [OLAP].[DimProcessStatus]
AS

SELECT 
	[DimProcessStatus_5496531415009931415].[Code] AS [ProcessStatusCode]
	,[DimProcessStatus_5496531415009931415].[DimProcessStatusID] AS [ProcessStatusDimProcessStatusID]
	,[DimProcessStatus_5496531415009931415].[Name] AS [ProcessStatusName]
	,[DimProcessStatus_5496531415009931415].[SourceKey] AS [ProcessStatusSourceKey]
	,[DimProcessStatus_5496531415009931415].[sysCreatedBy] AS [ProcessStatussysCreatedBy]
	,[DimProcessStatus_5496531415009931415].[sysCreatedOn] AS [ProcessStatussysCreatedOn]
	,[DimProcessStatus_5496531415009931415].[sysModifiedBy] AS [ProcessStatussysModifiedBy]
	,[DimProcessStatus_5496531415009931415].[sysModifiedOn] AS [ProcessStatussysModifiedOn]
FROM [Shared].[DimProcessStatus] AS [DimProcessStatus_5496531415009931415]



    