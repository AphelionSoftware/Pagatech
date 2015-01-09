SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	base_query.TextDescription,
	base_query.DimGLCodeSourceKey,		
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT DISTINCT
		SourceKey = fat.FinancialAccountTypeId,
		Name = fat.FinancialAccountTypeId,
		TextDescription = [Description],
		DimGLCodeSourceKey = fa.AccountCodeId
	FROM dbo.FinancialAccountType as fat
	INNER JOIN dbo.FinancialAccount AS fa ON
		fat.FinancialAccountTypeId = fa.FinancialAccountTypeId
) AS base_query
