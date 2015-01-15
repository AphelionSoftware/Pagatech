SELECT 
	SourceKey,
	base_query.name,
	base_query.code,
	base_query.DimCountrySourceKey
FROM 

(SELECT GeoZoneId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, Symbol AS Code, 1 AS DimCountrySourceKey FROM dbo.GeoZone) as base_query
