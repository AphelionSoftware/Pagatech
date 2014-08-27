    

CREATE VIEW [OLAP].[DimOrganizationUnitLevel2]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationUnitLevel2].[DimOrganizationUnitLevel2ID] 
	,[DimOrganizationUnitLevel2].[Code] 
	,[DimOrganizationUnitLevel2].[Name] 
	,[DimOrganizationUnitLevel2].[SourceKey] 

FROM [Shared].[DimOrganizationUnitLevel2] [DimOrganizationUnitLevel2]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2';

