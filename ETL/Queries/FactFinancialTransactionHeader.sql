DECLARE @reversals AS TABLE
(
	TxID  INT,
	EffDate  DATETIME,
	OrigTxID  INT,
	RelatedTxID  INT
);


WITH reversals AS
(

	SELECT
		ft1.FinancialTransactionId,
		ft1.TransactionDate AS EffDate,
		ft1.FinancialTransactionId AS OrigTxID,
		ft1.Reverses AS RelatedTxID
	FROM dbo.FinancialTransaction AS ft1
	WHERE
		ft1.Reverses IS NULL
	UNION ALL
	SELECT
		ft2.FinancialTransactionId,
		R.EffDate,
		R.OrigTxID,
		ft2.Reverses AS RelatedTxID
	FROM dbo.FinancialTransaction AS ft2
	INNER JOIN reversals AS r
		ON ft2.Reverses = R.FinancialTransactionId
)

INSERT INTO @reversals
(
	TxID,
	EffDate,
	OrigTxID,
	RelatedTxID
)
SELECT
	reversals.financialTransactionId,
	reversals.EffDate,
	reversals.OrigTxID,
	reversals.relatedTxID
FROM reversals;


SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I'),
	DimCreatedDateID, 
	DimCreatedTimeID, 
	DimEffectiveDateID, 
	DimEffectiveTimeID, 
	DimTransactionDateID,
	DimTransactionTimeID, 
	DimFinancialTxTypeSourceKey, 
	DimFinancialTxSubTypeSourceKey, 
	DimOrganizationUnitLevel4SourceKey, 
	DimUserSourceKey, 
	FactProcessTxSourceKey, 
	RelatedFactFinancialTxHeaderSourceKey, 
	OriginalFactFinancialTxHeaderSourceKey, 
	DimCurrencySourceKey, 
	TextDescription, 
	Amount, 
	ExchangeRate, 
	ExternalReferenceNumber,
	Fee, 
	ForeignCurrencyAmount, 
	ReferenceNumber, 
	ShortCode
FROM
(
	SELECT
		SourceKey = ft.FinancialTransactionId, 
		DimCreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),CreatedDate,112)), 
		DimCreatedTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),':','')), 
		DimEffectiveDateID = CONVERT(INT,CONVERT(VARCHAR(8),r2.EffDate,112)), 
		DimEffectiveTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), r2.EffDate, 114),':','')), 
		DimTransactionDateID = CONVERT(INT,CONVERT(VARCHAR(8),ft.TransactionDate,112)),
		DimTransactionTimeID = CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), ft.TransactionDate, 114),':','')), 
		DimFinancialTxTypeSourceKey = FinancialTransactionTypeId, 
		DimFinancialTxSubTypeSourceKey = FinancialTransactionSubTypeId, 
		DimOrganizationUnitLevel4SourceKey = orgUnit.OrganizationUnitId, 
		DimUserSourceKey = UserId, 
		FactProcessTxSourceKey = COALESCE(ProcessId, -1), 
		RelatedFactFinancialTxHeaderSourceKey = r2.relatedTxID, 
		OriginalFactFinancialTxHeaderSourceKey = r2.OrigTxID, 
		DimCurrencySourceKey = CurrencyId, 
		TextDescription = CONVERT(VARCHAR(100),[Description]), 
		Amount, 
		ExchangeRate, 
		ExternalReferenceNumber,
		Fee, 
		ForeignCurrencyAmount, 
		ReferenceNumber, 
		ShortCode
	FROM dbo.financialTransaction AS ft
	/*
	yes, I could have used Joins here, but thinking about pulling the next
	two sets of data using functions makes more sense to me, and it keeps the 
	code better segregated IMHO.  I'm also able to completely lock down the columns
	that are available to the main select, preventing a careless error.
	*/
	CROSS APPLY 
	(
		SELECT 
			r1.OrigTxID,
			COALESCE(r1.RelatedTxID,r1.OrigTxID) AS RelatedTxID,
			r1.EffDate
		FROM @reversals AS R1
		WHERE 
			R1.TxID = ft.FinancialTransactionId
	) AS R2
	OUTER APPLY
	(
		SELECT
			OrganizationUnitId
		FROM [dbo].[OrganizationUnitUser] As ouu
		WHERE
			ouu.UserId = ft.UserId
	) AS orgUnit

) AS base_query