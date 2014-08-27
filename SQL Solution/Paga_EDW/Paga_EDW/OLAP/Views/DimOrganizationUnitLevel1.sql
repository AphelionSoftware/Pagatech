    

CREATE VIEW [OLAP].[DimOrganizationUnitLevel1]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationUnitLevel1].[DimOrganizationUnitLevel1ID] 
	,[DimOrganizationUnitLevel1].[Code] 
	,[DimOrganizationUnitLevel1].[DimOrganizationID] 
	,[DimOrganizationUnitLevel1].[Name] 
	,[DimOrganizationUnitLevel1].[SourceKey] 

FROM [Shared].[DimOrganizationUnitLevel1] [DimOrganizationUnitLevel1]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1';

