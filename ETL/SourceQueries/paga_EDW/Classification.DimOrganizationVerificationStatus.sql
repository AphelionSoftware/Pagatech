SELECT 
			SourceKey,
			base_query.name
		FROM 
		
	(SELECT
	OrganizationVerificationStatusID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.OrganizationVerificationStatus) as base_query
