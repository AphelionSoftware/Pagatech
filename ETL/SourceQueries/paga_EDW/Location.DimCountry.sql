SELECT 
	SourceKey ,
	base_query.name,
    base_query.code
FROM 

(SELECT CountryId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, 'NGA' AS Code FROM dbo.Country) as base_query
