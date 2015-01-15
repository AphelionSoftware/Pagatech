SELECT 
	SourceKey,
	base_query.name
	
FROM 
(
	SELECT
		MerchantCategoryId AS SourceKey, 
		CONVERT(VARCHAR(255),Description) AS Name
	FROM dbo.MerchantCategory
) as base_query
