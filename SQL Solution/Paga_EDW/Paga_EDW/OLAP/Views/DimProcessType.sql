  

CREATE VIEW [OLAP].[DimProcessType]
WITH SCHEMABINDING
AS

SELECT 
	[DimProcessType_8039570567428785353].[Code] AS [DimProcessTypeCode]
	,[DimProcessType_8039570567428785353].[Description] AS [DimProcessTypeDescription]
	,[DimProcessType_8039570567428785353].[DimProcessTypeID] AS [DimProcessTypeID]
	,[DimProcessType_8039570567428785353].[Name] AS [DimProcessTypeName]
	,[DimProcessType_8039570567428785353].[SourceKey] AS [DimProcessTypeSourceKey]
FROM [Classification].[DimProcessType] AS [DimProcessType_8039570567428785353]



    