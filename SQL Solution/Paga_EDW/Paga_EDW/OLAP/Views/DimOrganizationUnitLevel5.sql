  

CREATE VIEW [OLAP].[DimOrganizationUnitLevel5]
AS

SELECT 
	[DimOrganizationUnitLevel5_7777486810204000562].[Code] AS [OrganizationUnitLevel5Code]
	,[DimOrganizationUnitLevel5_7777486810204000562].[DimOrganizationUnitLevel5ID] AS [OrganizationUnitLevel5DimOrganizationUnitLevel5ID]
	,[DimOrganizationUnitLevel5_7777486810204000562].[Name] AS [OrganizationUnitLevel5Name]
	,[DimOrganizationUnitLevel5_7777486810204000562].[SourceKey] AS [OrganizationUnitLevel5SourceKey]
	,[DimOrganizationUnitLevel5_7777486810204000562].[sysCreatedBy] AS [OrganizationUnitLevel5sysCreatedBy]
	,[DimOrganizationUnitLevel5_7777486810204000562].[sysCreatedOn] AS [OrganizationUnitLevel5sysCreatedOn]
	,[DimOrganizationUnitLevel5_7777486810204000562].[sysModifiedBy] AS [OrganizationUnitLevel5sysModifiedBy]
	,[DimOrganizationUnitLevel5_7777486810204000562].[sysModifiedOn] AS [OrganizationUnitLevel5sysModifiedOn]
FROM [Shared].[DimOrganizationUnitLevel5] AS [DimOrganizationUnitLevel5_7777486810204000562]



    