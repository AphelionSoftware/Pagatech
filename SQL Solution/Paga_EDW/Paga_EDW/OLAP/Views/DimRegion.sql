    

CREATE VIEW [OLAP].[DimRegion]
WITH SCHEMABINDING
AS

SELECT 
	[DimRegion].[DimRegionID] 
	,[DimRegion].[Code] 
	,[DimRegion].[Name] 
	,[DimRegion].[SourceKey] 

FROM [Location].[DimRegion] [DimRegion]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion';

