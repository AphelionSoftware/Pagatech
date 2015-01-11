SELECT 
		
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.SystemDescription,
	base_query.Name, 
	base_query.TextDescription,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
	
FROM 
	(
		SELECT 
			SourceKey = fa.roleId,
			SystemDescription = UPPER(CONVERT(VARCHAR(255),fa.[Namespace])),
			Name = CONVERT(VARCHAR(255), fa.Name),
			TextDescription = CONVERT(VARCHAR(1000), fa.Description)
		FROM dbo.[Role] AS fa

	) AS base_query
