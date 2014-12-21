  

CREATE VIEW [OLAP].[DimCity]
AS

SELECT 
	[DimCity_8385466126237786545].[Code] AS [DimCityCode]
	,[DimCity_8385466126237786545].[DimCityID] AS [DimCityID]
	,[DimCity_8385466126237786545].[Name] AS [DimCityName]
	,[DimCity_8385466126237786545].[SourceKey] AS [DimCitySourceKey]
FROM [Location].[DimCity] AS [DimCity_8385466126237786545]



    