SELECT 
			SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
			base_query.name,
			change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
		FROM 
	
	(SELECT
	PagaAccountUserTypeID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.PagaAccountUserType) as base_query
