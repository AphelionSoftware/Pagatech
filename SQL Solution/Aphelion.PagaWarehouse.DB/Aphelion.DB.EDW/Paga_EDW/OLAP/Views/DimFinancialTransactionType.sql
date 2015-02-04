  

CREATE VIEW [OLAP].[DimFinancialTransactionType]
AS

SELECT 
	[DimFinancialTransactionType_2464802176757215255].[DimFinancialTxTypeID] AS [FinancialTransactionTypeDimFinancialTxTypeID]
	,[DimFinancialTransactionType_2464802176757215255].[FinancialTxCategory] AS [FinancialTransactionTypeFinancialTxCategory]
	,[DimFinancialTransactionType_2464802176757215255].[Name] AS [FinancialTransactionTypeName]
	,[DimFinancialTransactionType_2464802176757215255].[SourceKey] AS [FinancialTransactionTypeSourceKey]
FROM [Classification].[DimFinancialTransactionType] AS [DimFinancialTransactionType_2464802176757215255]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTxCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';

