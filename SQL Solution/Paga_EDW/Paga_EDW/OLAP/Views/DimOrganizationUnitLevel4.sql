    

CREATE VIEW [OLAP].[DimOrganizationUnitLevel4]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationUnitLevel4].[DimOrganizationUnitLevel4ID] 
	,[DimOrganizationUnitLevel4].[Code] 
	,[DimOrganizationUnitLevel4].[Name] 
	,[DimOrganizationUnitLevel4].[SourceKey] 

FROM [Shared].[DimOrganizationUnitLevel4] [DimOrganizationUnitLevel4]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4';

