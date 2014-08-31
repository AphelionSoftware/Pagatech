  

CREATE VIEW [OLAP].[DimProcessStatus]
AS

SELECT 
	[DimProcessStatus_5496531415009931415].[Code] AS [DimProcessStatusCode]
	,[DimProcessStatus_5496531415009931415].[DimProcessStatusID] AS [DimProcessStatusID]
	,[DimProcessStatus_5496531415009931415].[Name] AS [DimProcessStatusName]
	,[DimProcessStatus_5496531415009931415].[SourceKey] AS [DimProcessStatusSourceKey]
FROM [Classification].[DimProcessStatus] AS [DimProcessStatus_5496531415009931415]



    