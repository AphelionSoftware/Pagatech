WITH cte AS (  	SELECT  		SourceKey = fa.FinancialAccountId, 		AccountNumber =  CONVERT(VARCHAR(20), fa.AccountNumber), 		Name = CONVERT(VARCHAR(20), fa.AccountNumber), 		fa.OpeningBalance, 		fa.RestrictedBalance, 		fa.TotalBalance, 		DimBankAccountSourceKey =  COALESCE(fa.BankAccountId, -1), 		DimCurrencySourceKey =  COALESCE(fa.CurrencyId, 'UNKNOWN'), 		DimFinancialAccountTypeSourceKey = fa.FinancialAccountTypeId, 		DimHoldingFinancialAccountSourceKey = fa.FinancialAccountId, 		fa.AccountHolderId, 		1 AS OrgLevel 	FROM dbo.FinancialAccount AS fa  	WHERE  		fa.HoldingFinancialAccountId IS NULL 	UNION ALL 	SELECT  		SourceKey = fa1.FinancialAccountId, 		AccountNumber =  CONVERT(VARCHAR(20), fa1.AccountNumber), 		Name = CONVERT(VARCHAR(20), fa1.AccountNumber), 		fa1.OpeningBalance, 		fa1.RestrictedBalance, 		fa1.TotalBalance, 		DimBankAccountSourceKey =  COALESCE(fa1.BankAccountId, -1), 		DimCurrencySourceKey =  COALESCE(fa1.CurrencyId, 'UNKNOWN'), 		DimFinancialAccountTypeSourceKey = fa1.FinancialAccountTypeId,		 		DimHoldingFinancialAccountSourceKey = fa1.HoldingFinancialAccountId, 		fa1.accountholderid, 		st.OrgLevel + 1 AS OrgLevel 	FROM [dbo].FinancialAccount AS fa1 	INNER JOIN cte AS ST ON  		fa1.HoldingFinancialAccountId = st.SourceKey 	WHERE fa1.HoldingFinancialAccountId IS NOT NULL )   SELECT	 	ct.SYS_CHANGE_OPERATION, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey, 	base_query.AccountNumber, 	base_query.Name, 	base_query.OpeningBalance, 	base_query.RestrictedBalance, 	base_query.TotalBalance, 	base_query.DimBankAccountSourceKey, 	base_query.DimCurrencySourceKey, 	base_query.DimFinancialAccountTypeSourceKey, 	base_query.DimHoldingFinancialAccountSourceKey, 	base_query.DimPagaAccountSourceKey FROM  ( 	SELECT  		SourceKey = cte.SourceKey, 		AccountNumber =  cte.AccountNumber, 		Name = cte.AccountNumber, 		cte.OpeningBalance, 		cte.RestrictedBalance, 		cte.TotalBalance, 		DimBankAccountSourceKey =  COALESCE(cte.dimBankAccountSourceKey,-1), 		DimCurrencySourceKey =  COALESCE(cte.DimCurrencySourceKey, 'UNKNOWN'), 		DimFinancialAccountTypeSourceKey = cte.DimFinancialAccountTypeSourceKey, 		DimPagaAccountSourceKey = COALESCE(paga_acct.PagaAccountId,-1), 		cte.DimHoldingFinancialAccountSourceKey 	FROM cte  	OUTER APPLY 	( 		SELECT DISTINCT 			pa.PagaAccountId 		FROM dbo.pagaAccount AS pa   		INNER JOIN dbo.PagaAccountNature AS pan ON 			pa.PagaAccountId = pan.PagaAccountId 		WHERE 			pa.AccountHolderId = cte.AccountHolderId 	) AS paga_acct ) AS base_query
