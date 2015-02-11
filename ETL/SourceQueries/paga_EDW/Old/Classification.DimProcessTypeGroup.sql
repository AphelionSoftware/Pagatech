SELECT 
			SourceKey ,
			base_query.name
		FROM 
		(SELECT
	ProcessTypeGroupID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.ProcessTypeGroup) as base_query
