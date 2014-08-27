    

CREATE VIEW [OLAP].[DimGeoZone]
WITH SCHEMABINDING
AS

SELECT 
	[DimGeoZone].[DimGeoZoneID] 
	,[DimGeoZone].[Code] 
	,[DimGeoZone].[DimCountryID] 
	,[DimGeoZone].[Name] 
	,[DimGeoZone].[SourceKey] 
	,[DimGeoZone].[Symbol] 

FROM [Location].[DimGeoZone] [DimGeoZone]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone';

