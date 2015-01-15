SELECT 
			SourceKey ,
			base_query.name
		FROM 
		

	(SELECT
	ProcessStatusID AS SourceKey, 
	 CONVERT(VARCHAR(255),ProcessStatusID) AS Name
FROM dbo.ProcessStatus) as base_query
