  

CREATE VIEW [OLAP].[DimFinancialTransactionType]
AS

SELECT 
	[DimFinancialTransactionType_2464802176757215255].[DimFinancialTransactionTypeID] AS [DimFinancialTransactionTypeID]
	,[DimFinancialTransactionType_2464802176757215255].[Name] AS [DimFinancialTransactionTypeName]
	,[DimFinancialTransactionType_2464802176757215255].[SourceKey] AS [DimFinancialTransactionTypeSourceKey]
FROM [Classification].[DimFinancialTransactionType] AS [DimFinancialTransactionType_2464802176757215255]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';

