  

CREATE VIEW [OLAP].[DimFinancialTxType]
AS

SELECT 
	[DimFinancialTxType_5509620861014332099].[DimFinancialTxTypeID] AS [FinancialTxTypeDimFinancialTxTypeID]
	,[DimFinancialTxType_5509620861014332099].[FinancialTxCategory] AS [FinancialTxTypeFinancialTxCategory]
	,[DimFinancialTxType_5509620861014332099].[Name] AS [FinancialTxTypeName]
	,[DimFinancialTxType_5509620861014332099].[SourceKey] AS [FinancialTxTypeSourceKey]
FROM [Classification].[DimFinancialTxType] AS [DimFinancialTxType_5509620861014332099]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTxCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'FinancialTxTypeDimFinancialTxTypeID';

