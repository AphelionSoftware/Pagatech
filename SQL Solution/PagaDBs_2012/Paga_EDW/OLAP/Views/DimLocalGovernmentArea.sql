    

CREATE VIEW [OLAP].[DimLocalGovernmentArea]
AS

SELECT 
	[DimLocalGovernmentArea].[DimLocalGovernmentAreaID] 
	,[DimLocalGovernmentArea].[Code] 
	,[DimLocalGovernmentArea].[Name] 
	,[DimLocalGovernmentArea].[SourceKey] 
	,[DimLocalGovernmentArea].[DimRegionID] 

FROM [Location].[DimLocalGovernmentArea] [DimLocalGovernmentArea]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimLocalGovernmentArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRegionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'DimRegionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimLocalGovernmentArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimLocalGovernmentArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimLocalGovernmentArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimLocalGovernmentArea';

