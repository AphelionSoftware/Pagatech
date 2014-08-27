  

CREATE VIEW [OLAP].[DimAgentCommissionType]
WITH SCHEMABINDING
AS

SELECT 
	[DimAgentCommissionType_3030226662952875364].[Code] AS [DimAgentCommissionTypeCode]
	,[DimAgentCommissionType_3030226662952875364].[DimAgentCommissionTypeID] AS [DimAgentCommissionTypeID]
	,[DimAgentCommissionType_3030226662952875364].[Name] AS [DimAgentCommissionTypeName]
	,[DimAgentCommissionType_3030226662952875364].[SourceKey] AS [DimAgentCommissionTypeSourceKey]
FROM [Classification].[DimAgentCommissionType] AS [DimAgentCommissionType_3030226662952875364]



    