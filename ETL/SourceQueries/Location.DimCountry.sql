SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
    base_query.code,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 

(SELECT CountryId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, 'NGA' AS Code FROM dbo.Country) as base_query
