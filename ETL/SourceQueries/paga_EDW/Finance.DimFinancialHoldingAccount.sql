SELECT 
	SourceKey,
	base_query.AccountNumber,
	base_query.Name,
	base_query.OpeningBalance,
	base_query.RestrictedBalance,
	base_query.TotalBalance
FROM
(
	SELECT 
		SourceKey = fa.FinancialAccountId,
		AccountNumber = CONVERT(VARCHAR(20), fa.AccountNumber),					Name = CONVERT(VARCHAR(20), fa.AccountNumber),
		fa.OpeningBalance,
		fa.RestrictedBalance,
		fa.TotalBalance
	FROM dbo.FinancialAccount AS fa 
	WHERE 
		fa.HoldingFinancialAccountId IS NULL
) AS base_query
