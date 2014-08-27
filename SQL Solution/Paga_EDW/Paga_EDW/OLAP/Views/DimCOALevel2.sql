    

CREATE VIEW [OLAP].[DimCOALevel2]
WITH SCHEMABINDING
AS

SELECT 
	[DimCOALevel2].[DimCOALevel2ID] 
	,[DimCOALevel2].[Code] 
	,[DimCOALevel2].[DimCOALevel1ID] 
	,[DimCOALevel2].[GLCodeRange] 
	,[DimCOALevel2].[Name] 
	,[DimCOALevel2].[SourceKey] 

FROM [Finance].[DimCOALevel2] [DimCOALevel2]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2';

