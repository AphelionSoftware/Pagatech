    

CREATE VIEW [OLAP].[DimGovernmentLocalArea]
WITH SCHEMABINDING
AS

SELECT 
	[DimGovernmentLocalArea].[DimGovernmentLocalAreaID] 
	,[DimGovernmentLocalArea].[Code] 
	,[DimGovernmentLocalArea].[Name] 
	,[DimGovernmentLocalArea].[SourceKey] 

FROM [Location].[DimGovernmentLocalArea] [DimGovernmentLocalArea]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea';

