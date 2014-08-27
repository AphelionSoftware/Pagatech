  

CREATE VIEW [OLAP].[DimOrganizationUnitLevel5]
WITH SCHEMABINDING
AS

SELECT 
	[DimOrganizationUnitLevel5_7777486810204000562].[Code] AS [DimOrganizationUnitLevel5Code]
	,[DimOrganizationUnitLevel5_7777486810204000562].[DimOrganizationUnitLevel5ID] AS [DimOrganizationUnitLevel5ID]
	,[DimOrganizationUnitLevel5_7777486810204000562].[Name] AS [DimOrganizationUnitLevel5Name]
	,[DimOrganizationUnitLevel5_7777486810204000562].[SourceKey] AS [DimOrganizationUnitLevel5SourceKey]
FROM [Shared].[DimOrganizationUnitLevel5] AS [DimOrganizationUnitLevel5_7777486810204000562]



    