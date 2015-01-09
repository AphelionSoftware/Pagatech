SELECT 
			SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
			base_query.name,
			change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
		FROM 
	

	(SELECT BusinessTypeId AS SourceKey,  CONVERT(VARCHAR(255),BusinessTypeId) AS Name FROM dbo.BusinessType) as base_query
