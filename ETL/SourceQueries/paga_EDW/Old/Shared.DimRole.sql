--DimRole
SELECT 	
	SourceKey, base_query.SystemDescription, base_query.Name, base_query.TextDescription
FROM 
( SELECT SourceKey = fa.roleId, SystemDescription = UPPER(CONVERT(VARCHAR(255),fa.[Namespace])), Name = CONVERT(VARCHAR(255), fa.Name), TextDescription = CONVERT(VARCHAR(1000), fa.Description) FROM dbo.[RoleLookup] AS fa ) AS base_query
