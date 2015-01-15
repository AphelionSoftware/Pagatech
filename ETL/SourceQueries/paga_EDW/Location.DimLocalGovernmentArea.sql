SELECT 
	SourceKey ,
	base_query.name,
	base_query.code,
	base_query.DimRegionSourceKey
FROM 

(SELECT LocalGovernmentAreaId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, CONVERT(VARCHAR(50),LgaCode) as Code, RegionId AS DimRegionSourceKey FROM dbo.LocalGovernmentArea) as base_query
