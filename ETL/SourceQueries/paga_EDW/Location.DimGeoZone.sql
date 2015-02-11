SELECT  	SourceKey, 	base_query.name, 	base_query.code, 	base_query.DimCountrySourceKey, ct.SYS_CHANGE_OPERATION,
	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT GeoZoneId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, Symbol AS Code, 1 AS DimCountrySourceKey FROM dbo.GeoZone) as base_query
