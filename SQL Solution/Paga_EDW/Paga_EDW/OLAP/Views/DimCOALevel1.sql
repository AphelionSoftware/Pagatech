    

CREATE VIEW [OLAP].[DimCOALevel1]
WITH SCHEMABINDING
AS

SELECT 
	[DimCOALevel1].[DimCOALevel1ID] 
	,[DimCOALevel1].[Code] 
	,[DimCOALevel1].[GLCodeRange] 
	,[DimCOALevel1].[Name] 
	,[DimCOALevel1].[SourceKey] 

FROM [Finance].[DimCOALevel1] [DimCOALevel1]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1';

