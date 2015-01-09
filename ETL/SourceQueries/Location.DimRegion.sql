SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	DimGeoZoneSourceKey = COALESCE(base_query.DimGeoZoneSourceKey, -1),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 

(SELECT RegionId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, GeoZoneId AS DimGeoZoneSourceKey FROM dbo.Region) as base_query
