SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	AccountNumber, 
	Name,
	DimBankAccountSourceKey, 
	DimPagaAccountSourceKey,
	DimCurrencySourceKey,
	DimFinancialAccountTypeSourceKey,
	base_query.OpeningBalance, 
	base_query.RestrictedBalance, 
	base_query.TotalBalance, 
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT 
		SourceKey = fa.FinancialAccountId,
		AccountNumber =  CONVERT(VARCHAR(20), fa.AccountNumber),
		Name = CONVERT(VARCHAR(20), fa.AccountNumber),
		fa.OpeningBalance,
		fa.RestrictedBalance,
		fa.TotalBalance,
		DimBankAccountSourceKey =  COALESCE(fa.BankAccountId, -1),
		DimCurrencySourceKey =  COALESCE(fa.CurrencyId, 'UNKNOWN'),
		DimFinancialAccountTypeSourceKey = fa.FinancialAccountTypeId,
		DimPagaAccountSourceKey = COALESCE(paga_acct.PagaAccountId,-1)
	FROM dbo.FinancialAccount AS fa
	OUTER APPLY
	(
		SELECT DISTINCT
			pa.PagaAccountId
		FROM dbo.pagaAccount AS pa  
		INNER JOIN dbo.PagaAccountNature AS pan ON
			pa.PagaAccountId = pan.PagaAccountId
		WHERE
			pa.AccountHolderId = fa.AccountHolderId
	) AS paga_acct
	WHERE
		EXISTS
		(
			SELECT DISTINCT		
				HoldingFinancialAccountID
			FROM dbo.FinancialAccount AS ha
			WHERE fa.FinancialAccountId = ha.HoldingFinancialAccountId
		) 
		OR fa.HoldingFinancialAccountId IS NULL
		
) AS base_query