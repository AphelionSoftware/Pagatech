SELECT 
	COALESCE(base_query.SourceKey,-1) AS SourceKey,
	CONVERT(VARCHAR(255),COALESCE(base_query.name,'UNKNOWN')) AS name
FROM
(
 	SELECT
		SourceKey,
		Name
	FROM
	(
		SELECT 
			ROW_NUMBER() OVER (PARTITION BY description ORDER BY OrganizationUnitTypeID) AS rn,
			 OrganizationUnitTypeID AS SourceKey,
			 RTRIM(LTRIM(description)) as name,
			 OrganizationID
		FROM [dbo].[OrganizationUnitType]
	) AS org_unit_type
	WHERE 
		org_unit_type.rn = 1
) AS base_query
