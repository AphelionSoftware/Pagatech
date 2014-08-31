  

CREATE VIEW [OLAP].[DimCity]
AS

SELECT 
	[DimCity_8385466126237786545].[Code] AS [DimCityCode]
	,[DimCity_8385466126237786545].[DimCityID] AS [DimCityID]
	,[DimCity_8385466126237786545].[Name] AS [DimCityName]
	,[DimCity_8385466126237786545].[SourceKey] AS [DimCitySourceKey]
FROM [Location].[DimCity] AS [DimCity_8385466126237786545]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';

