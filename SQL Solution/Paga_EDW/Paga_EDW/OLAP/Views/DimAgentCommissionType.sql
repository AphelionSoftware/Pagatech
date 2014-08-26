  

CREATE VIEW [OLAP].[DimAgentCommissionType]
AS

SELECT 
	[DimAgentCommissionType_3030226662952875364].[Code] AS [AgentCommissionTypeCode]
	,[DimAgentCommissionType_3030226662952875364].[DimAgentCommissionTypeID] AS [AgentCommissionTypeDimAgentCommissionTypeID]
	,[DimAgentCommissionType_3030226662952875364].[Name] AS [AgentCommissionTypeName]
	,[DimAgentCommissionType_3030226662952875364].[SourceKey] AS [AgentCommissionTypeSourceKey]
	,[DimAgentCommissionType_3030226662952875364].[sysCreatedBy] AS [AgentCommissionTypesysCreatedBy]
	,[DimAgentCommissionType_3030226662952875364].[sysCreatedOn] AS [AgentCommissionTypesysCreatedOn]
	,[DimAgentCommissionType_3030226662952875364].[sysModifiedBy] AS [AgentCommissionTypesysModifiedBy]
	,[DimAgentCommissionType_3030226662952875364].[sysModifiedOn] AS [AgentCommissionTypesysModifiedOn]
FROM [Shared].[DimAgentCommissionType] AS [DimAgentCommissionType_3030226662952875364]



    