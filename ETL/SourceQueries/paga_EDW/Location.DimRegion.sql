SELECT  	SourceKey, 	base_query.name, 	DimGeoZoneSourceKey = COALESCE(base_query.DimGeoZoneSourceKey, -1), ct.SYS_CHANGE_OPERATION,
	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT RegionId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, GeoZoneId AS DimGeoZoneSourceKey FROM dbo.Region) as base_query
