WITH cte AS
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
		DimFinancialAccountLevel1SourceKey = fa.FinancialAccountId,
		1 AS OrgLevel
	FROM dbo.FinancialAccount AS fa 
	WHERE 
		fa.HoldingFinancialAccountId IS NULL
	UNION ALL
	SELECT 
		SourceKey = fa1.FinancialAccountId,
		AccountNumber =  CONVERT(VARCHAR(20), fa1.AccountNumber),
		Name = CONVERT(VARCHAR(20), fa1.AccountNumber),
		fa1.OpeningBalance,
		fa1.RestrictedBalance,
		fa1.TotalBalance,
		DimBankAccountSourceKey =  COALESCE(fa1.BankAccountId, -1),
		DimCurrencySourceKey =  COALESCE(fa1.CurrencyId, 'UNKNOWN'),
		DimFinancialAccountTypeSourceKey = fa1.FinancialAccountTypeId,
		
		DimFinancialAccountLevel1SourceKey = fa1.HoldingFinancialAccountId,
		st.OrgLevel + 1 AS OrgLevel
	FROM [dbo].FinancialAccount AS fa1
	INNER JOIN cte AS ST ON 
		fa1.HoldingFinancialAccountId = st.SourceKey
	WHERE fa1.HoldingFinancialAccountId IS NOT NULL
)


SELECT cte.*, DimPagaAccountSourceKey = COALESCE(paga_acct.PagaAccountId,-1) 
FROM cte
OUTER APPLY
	(
		SELECT DISTINCT
			pa.PagaAccountId
		FROM dbo.pagaAccount AS pa  
		INNER JOIN dbo.PagaAccountNature AS pan ON
			pa.PagaAccountId = pan.PagaAccountId
		WHERE
			pa.AccountHolderId = cte.SourceKey
	) AS paga_acct




