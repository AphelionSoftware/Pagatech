SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT
		MerchantCategoryId AS SourceKey, 
		CONVERT(VARCHAR(255),Description) AS Name
	FROM dbo.MerchantCategory
) as base_query
