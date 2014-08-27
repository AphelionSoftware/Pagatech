    

CREATE VIEW [OLAP].[DimCOALevel3]
WITH SCHEMABINDING
AS

SELECT 
	[DimCOALevel3].[DimCOALevel3ID] 
	,[DimCOALevel3].[Code] 
	,[DimCOALevel3].[DimCOALevel2ID] 
	,[DimCOALevel3].[GLCodeRange] 
	,[DimCOALevel3].[Name] 
	,[DimCOALevel3].[SourceKey] 

FROM [Finance].[DimCOALevel3] [DimCOALevel3]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3';

