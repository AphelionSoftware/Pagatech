SELECT 
	SourceKey ,
	base_query.DimGLCodeSubGroupSourceKey, 
	base_query.name,
	base_query.TextDescription,
	base_query.GLCode,
	base_query.IsNormalDebit
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
