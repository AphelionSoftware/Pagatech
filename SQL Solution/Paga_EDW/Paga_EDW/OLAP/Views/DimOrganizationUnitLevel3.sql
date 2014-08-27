    

CREATE VIEW [OLAP].[DimOrganizationUnitLevel3]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationUnitLevel3].[DimOrganizationUnitLevel3ID] 
	,[DimOrganizationUnitLevel3].[Code] 
	,[DimOrganizationUnitLevel3].[Name] 
	,[DimOrganizationUnitLevel3].[SourceKey] 

FROM [Shared].[DimOrganizationUnitLevel3] [DimOrganizationUnitLevel3]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3';

