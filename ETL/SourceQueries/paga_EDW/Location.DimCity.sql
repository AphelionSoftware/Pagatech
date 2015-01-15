SELECT 
	SourceKey,
	base_query.name,
	PostalCode = COALESCE(base_query.PostalCode, -1),
	DimLocalGovernmentAreaSourceKey= COALESCE(base_query.DimLocalGovernmentAreaSourceKey, -1)
FROM 

(SELECT CityId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, PostalCode as PostalCode, LocalGovernmentAreaId AS DimLocalGovernmentAreaSourceKey FROM dbo.City) as base_query
