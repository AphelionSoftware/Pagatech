SELECT 
			SourceKey,
			base_query.name
		
	FROM 

	(SELECT
	OrganizationSubscriptionStatusId AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.OrganizationSubscriptionStatus) as base_query
