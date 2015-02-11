SELECT  	SourceKey , 	base_query.name,     base_query.code, ct.SYS_CHANGE_OPERATION,
	SYS_CHANGE_VERSION = ct.as_of_change_version FROM   (SELECT CountryId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, 'NGA' AS Code FROM dbo.Country) as base_query
