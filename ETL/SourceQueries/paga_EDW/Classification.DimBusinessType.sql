SELECT 
			SourceKey,
			base_query.name
		FROM 
	

	(SELECT BusinessTypeId AS SourceKey,  CONVERT(VARCHAR(255),BusinessTypeId) AS Name FROM dbo.BusinessType) as base_query
