﻿  

CREATE VIEW [OLAP].[DimFinancialTxType]
AS

SELECT 
	[DimFinancialTxType_2464802176757215255].[DimFinancialTxTypeID] AS [DimFinancialTxTypeID]
	,[DimFinancialTxType_2464802176757215255].[Name] AS [DimFinancialTxTypeName]
	,[DimFinancialTxType_2464802176757215255].[SourceKey] AS [DimFinancialTxTypeSourceKey]
FROM [Classification].[DimFinancialTxType] AS [DimFinancialTxType_2464802176757215255]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTxType', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeID';

