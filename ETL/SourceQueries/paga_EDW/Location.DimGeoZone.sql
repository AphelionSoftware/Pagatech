SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	base_query.code,
	base_query.DimCountrySourceKey,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 

(SELECT GeoZoneId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, Symbol AS Code, 1 AS DimCountrySourceKey FROM dbo.GeoZone) as base_query
