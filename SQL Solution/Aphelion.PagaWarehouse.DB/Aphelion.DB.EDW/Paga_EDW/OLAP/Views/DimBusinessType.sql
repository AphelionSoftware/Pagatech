  

CREATE VIEW [OLAP].[DimBusinessType]
AS

SELECT 
	[DimBusinessType_7130464121268330432].[DimBusinessTypeID] AS [BusinessTypeDimBusinessTypeID]
	,[DimBusinessType_7130464121268330432].[Name] AS [BusinessTypeName]
	,[DimBusinessType_7130464121268330432].[SourceKey] AS [BusinessTypeSourceKey]
FROM [Classification].[DimBusinessType] AS [DimBusinessType_7130464121268330432]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';

