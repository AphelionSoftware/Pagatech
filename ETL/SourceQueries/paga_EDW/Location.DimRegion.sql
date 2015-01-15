SELECT 
	SourceKey,
	base_query.name,
	DimGeoZoneSourceKey = COALESCE(base_query.DimGeoZoneSourceKey, -1)
FROM 

(SELECT RegionId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, GeoZoneId AS DimGeoZoneSourceKey FROM dbo.Region) as base_query
