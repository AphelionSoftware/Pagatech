SELECT 
			SourceKey, 
			base_query.name
		FROM 
	
	(SELECT
	PagaAccountUserTypeID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.PagaAccountUserType) as base_query
