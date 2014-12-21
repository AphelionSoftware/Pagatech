  

CREATE VIEW [OLAP].[DimIntegrationTransactionType]
AS

SELECT 
	[DimIntegrationTransactionType_6918401542864726088].[DimIntegrationTxTypeID] AS [IntegrationTransactionTypeDimIntegrationTxTypeID]
	,[DimIntegrationTransactionType_6918401542864726088].[Name] AS [IntegrationTransactionTypeName]
	,[DimIntegrationTransactionType_6918401542864726088].[SourceKey] AS [IntegrationTransactionTypeSourceKey]
FROM [Shared].[DimIntegrationTransactionType] AS [DimIntegrationTransactionType_6918401542864726088]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionType', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';

