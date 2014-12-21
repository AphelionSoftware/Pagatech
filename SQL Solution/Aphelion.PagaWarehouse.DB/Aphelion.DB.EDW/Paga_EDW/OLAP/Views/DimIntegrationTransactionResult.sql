  

CREATE VIEW [OLAP].[DimIntegrationTransactionResult]
AS

SELECT 
	[DimIntegrationTransactionResult_701595024063905223].[DimIntegrationTxResultID] AS [IntegrationTransactionResultDimIntegrationTxResultID]
	,[DimIntegrationTransactionResult_701595024063905223].[Name] AS [IntegrationTransactionResultName]
	,[DimIntegrationTransactionResult_701595024063905223].[SourceKey] AS [IntegrationTransactionResultSourceKey]
FROM [Shared].[DimIntegrationTransactionResult] AS [DimIntegrationTransactionResult_701595024063905223]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxResultID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimIntegrationTransactionResult', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';

