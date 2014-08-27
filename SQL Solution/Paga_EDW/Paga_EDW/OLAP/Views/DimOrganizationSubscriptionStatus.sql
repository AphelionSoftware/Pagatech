    

CREATE VIEW [OLAP].[DimOrganizationSubscriptionStatus]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationSubscriptionStatus].[DimOrganizationSubscriptionStatusID] 
	,[DimOrganizationSubscriptionStatus].[Code] 
	,[DimOrganizationSubscriptionStatus].[Name] 
	,[DimOrganizationSubscriptionStatus].[SourceKey] 

FROM [Classification].[DimOrganizationSubscriptionStatus] [DimOrganizationSubscriptionStatus]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus';

