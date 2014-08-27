    

CREATE VIEW [OLAP].[DimCountry]
WITH SCHEMABINDING
AS

SELECT 
	[DimCountry].[DimCountryID] 
	,[DimCountry].[Code] 
	,[DimCountry].[Country] 
	,[DimCountry].[ISOCode] 
	,[DimCountry].[Name] 
	,[DimCountry].[SourceKey] 

FROM [Location].[DimCountry] [DimCountry]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry';

