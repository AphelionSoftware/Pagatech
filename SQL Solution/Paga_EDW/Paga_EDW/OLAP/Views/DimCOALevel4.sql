    

CREATE VIEW [OLAP].[DimCOALevel4]
WITH SCHEMABINDING
AS

SELECT 
	[DimCOALevel4].[DimCOALevel4ID] 
	,[DimCOALevel4].[Code] 
	,[DimCOALevel4].[Description] 
	,[DimCOALevel4].[DimCOALevel3ID] 
	,[DimCOALevel4].[GLCode] 
	,[DimCOALevel4].[IsNormalDebit] 
	,[DimCOALevel4].[Name] 
	,[DimCOALevel4].[SourceKey] 

FROM [Finance].[DimCOALevel4] [DimCOALevel4]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4';

