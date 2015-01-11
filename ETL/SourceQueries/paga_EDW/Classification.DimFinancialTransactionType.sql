SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I'),
	base_query.name,
	base_query.FinancialTxCategory
	
FROM 
(
	SELECT
		FinancialTransactionTypeID AS SourceKey, 
		CONVERT(VARCHAR(255),Description) AS Name,
		CONVERT(VARCHAR(255),COALESCE(FinancialTransactionTypeGroupId,'UNKNOWN')) AS FinancialTxCategory
	FROM dbo.FinancialTransactionType AS ftt
	OUTER APPLY
	(
		SELECT TOP 1 
			x.FinancialTransactionTypeGroupId
		FROM [dbo].[FinancialTransactionTypeTransactionTypeGroup] as x
		WHERE 
			x.FinancialTransactionTypeId = ftt.FinancialTransactionTypeId
		ORDER BY 
			x.UpdatedDate DESC
	) AS ftg
) as base_query
