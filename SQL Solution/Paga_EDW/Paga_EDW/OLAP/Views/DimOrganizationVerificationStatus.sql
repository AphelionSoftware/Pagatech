    

CREATE VIEW [OLAP].[DimOrganizationVerificationStatus]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationVerificationStatus].[DimOrganizationVerificationStatusID] 
	,[DimOrganizationVerificationStatus].[Code] 
	,[DimOrganizationVerificationStatus].[Name] 
	,[DimOrganizationVerificationStatus].[SourceKey] 

FROM [Classification].[DimOrganizationVerificationStatus] [DimOrganizationVerificationStatus]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus';

