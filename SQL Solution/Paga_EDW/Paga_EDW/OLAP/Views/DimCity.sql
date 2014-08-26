  

CREATE VIEW [OLAP].[DimCity]
AS

SELECT 
	[DimCity_8385466126237786545].[Code] AS [CityCode]
	,[DimCity_8385466126237786545].[DimCityID] AS [CityDimCityID]
	,[DimCity_8385466126237786545].[Name] AS [CityName]
	,[DimCity_8385466126237786545].[SourceKey] AS [CitySourceKey]
	,[DimCity_8385466126237786545].[sysCreatedBy] AS [CitysysCreatedBy]
	,[DimCity_8385466126237786545].[sysCreatedOn] AS [CitysysCreatedOn]
	,[DimCity_8385466126237786545].[sysModifiedBy] AS [CitysysModifiedBy]
	,[DimCity_8385466126237786545].[sysModifiedOn] AS [CitysysModifiedOn]
FROM [Shared].[DimCity] AS [DimCity_8385466126237786545]



    