SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	PostalCode = COALESCE(base_query.PostalCode, -1),
	DimLocalGovernmentAreaSourceKey= COALESCE(base_query.DimLocalGovernmentAreaSourceKey, -1),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 

(SELECT CityId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, PostalCode as PostalCode, LocalGovernmentAreaId AS DimLocalGovernmentAreaSourceKey FROM dbo.City) as base_query
