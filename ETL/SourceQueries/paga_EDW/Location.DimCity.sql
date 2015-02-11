SELECT  	SourceKey, 	base_query.name, 	PostalCode = COALESCE(base_query.PostalCode, -1), 	DimLocalGovernmentAreaSourceKey= COALESCE(base_query.DimLocalGovernmentAreaSourceKey, -1), ct.SYS_CHANGE_OPERATION,
	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT CityId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, PostalCode as PostalCode, LocalGovernmentAreaId AS DimLocalGovernmentAreaSourceKey FROM dbo.City) as base_query


