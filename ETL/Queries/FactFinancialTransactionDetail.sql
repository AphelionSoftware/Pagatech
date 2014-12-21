
SELECT	
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I'),
	base_query.DimCreatedDateID,
	base_query.DimCreatedTimeID,
	base_query.DimFinancialAccountSourceKey,
	base_query.DimPagaAccountSourceKey,
	base_query.FactFinancialTxHeaderSourceKey,
	base_query.TextDescription,
	base_query.CreditAmount,
	base_query.DebitAmount
FROM
(
	SELECT
		SourceKey = fti.FinancialTransactionItemId, 
		DimCreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),fti.CreatedDate,112)), 
		DimCreatedTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), fti.CreatedDate, 114),':','')), 
		DimFinancialAccountSourceKey = fti.FinancialAccountId, 
		DimPagaAccountSourceKey = paga_acct.PagaAccountId, 
		FactFinancialTxHeaderSourceKey = fti.FinancialTransactionId,
		TextDescription = CONVERT(VARCHAR(200),fti.[Description]), 
		fti.CreditAmount, 
		fti.DebitAmount
	FROM  [dbo].[FinancialTransactionItem] AS fti
	LEFT JOIN 
	(
		SELECT 
			pa.PagaAccountId,
			fa.FinancialAccountId
		FROM dbo.pagaAccount AS pa 
		INNER JOIN dbo.FinancialAccount as fa ON
			pa.AccountHolderId = fa.AccountHolderId 
	) AS paga_acct ON
		paga_acct.FinancialAccountId = fti.FinancialAccountId
) AS base_query