  

CREATE VIEW [OLAP].[DimProcessType]
AS

SELECT 
	[DimProcessType_8039570567428785353].[Code] AS [ProcessTypeCode]
	,[DimProcessType_8039570567428785353].[Description] AS [ProcessTypeDescription]
	,[DimProcessType_8039570567428785353].[DimProcessTypeID] AS [ProcessTypeDimProcessTypeID]
	,[DimProcessType_8039570567428785353].[Name] AS [ProcessTypeName]
	,[DimProcessType_8039570567428785353].[SourceKey] AS [ProcessTypeSourceKey]
	,[DimProcessType_8039570567428785353].[sysCreatedBy] AS [ProcessTypesysCreatedBy]
	,[DimProcessType_8039570567428785353].[sysCreatedOn] AS [ProcessTypesysCreatedOn]
	,[DimProcessType_8039570567428785353].[sysModifiedBy] AS [ProcessTypesysModifiedBy]
	,[DimProcessType_8039570567428785353].[sysModifiedOn] AS [ProcessTypesysModifiedOn]
FROM [Shared].[DimProcessType] AS [DimProcessType_8039570567428785353]



    