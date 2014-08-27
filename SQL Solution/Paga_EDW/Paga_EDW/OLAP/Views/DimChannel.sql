    

CREATE VIEW [OLAP].[DimChannel]
WITH SCHEMABINDING
AS

SELECT 
	[DimChannel].[DimChannelID] 
	,[DimChannel].[Code] 
	,[DimChannel].[Description] 
	,[DimChannel].[Name] 
	,[DimChannel].[SourceKey] 

FROM [Activity].[DimChannel] [DimChannel]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel';

