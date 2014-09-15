SELECT
	SourceKey = FinancialTransactionId, 
	DimCreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),CreatedDate,112)), 
	DimCreatedTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),':','')), 
	DimEffectiveDateID = CONVERT(INT,CONVERT(VARCHAR(8),eff_date.TransactionDate,112)), 
	DimEffectiveTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), eff_date.TransactionDate, 114),':','')), 
	DimTransactionDateID = CONVERT(INT,CONVERT(VARCHAR(8),ft.TransactionDate,112)),
	DimTransactionTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), ft.TransactionDate, 114),':','')), 
	--DimCurrencySourceKey, 
	--DimFinancialTxSubTypeSourceKey, 
	--DimFinancialTxTypeSourceKey, 
	--DimOrganizationUnitLevel4SourceKey, 
	--DimUserSourceKey, 
	--FactProcessTxSourceKey, 
	
	RelatedFactFinancialTxHeaderSourceKey = ft.__Reverses, 
	OriginalFactFinancialTxHeaderSourceKey = ft.__Reverses, 
	--TextDescription, 
	Amount, 
	ExchangeRate, 
	ExternalReferenceNumber,
	Fee, 
	ForeignCurrencyAmount, 
	ReferenceNumber, 
	ShortCode
FROM dbo.financialTransaction AS ft
OUTER APPLY
(
	SELECT	
		TransactionDate
	FROM dbo.FinancialTransaction
	WHERE
		FinancialTransactionId = ft.__Reverses
) AS eff_date
WHERE 
	ft.FinancialTransactionId = 871088