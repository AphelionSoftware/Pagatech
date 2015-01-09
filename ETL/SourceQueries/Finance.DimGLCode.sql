SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.DimGLCodeSubGroupSourceKey, 
	base_query.name,
	base_query.TextDescription,
	base_query.GLCode,
	base_query.IsNormalDebit,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT
		SourceKey = AccountCodeId,
		DimGLCodeSubGroupSourceKey = AccountCodeGroupId,
		Name,
		TextDescription = CONVERT(VARCHAR(1000),[Description]),
		GLCode = Code,
		IsNormalDebit
	FROM dbo.AccountCode
) AS base_query
