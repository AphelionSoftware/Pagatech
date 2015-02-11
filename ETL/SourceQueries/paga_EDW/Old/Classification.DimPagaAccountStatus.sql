SELECT 
			SourceKey,
			base_query.name
		FROM 
		

	(SELECT
	PagaAccountStatusID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.PagaAccountStatus) as base_query
