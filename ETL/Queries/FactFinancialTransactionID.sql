SELECT
	*
FROM
(
	SELECT
		SourceKey = fti.FinancialTransactionitemID,
		ft.FinancialTransactionID,
		ft.TransactionDate,
		OriginalTransactionID = COALESCE(ft.__reverses,ft.financialTransactionID),
		EffectiveDate = COALESCE(eff_date.TransactionDate, ft.transactionDate),
		fti.FinancialAccountId,
		ft.FinancialTransactionTypeID,
		ft.FinancialTransactionSubTypeID,
		ft.UserID,
		ft.ProcessID,
		ft.CurrencyID,
		ft.ExchangeRate,
		ft.ExternalReferenceNumber,
		ft.ReferenceNumber,
		ft.ShortCode,
		fti.CreditAmount,
		fti.DebitAmount
	FROM dbo.FinancialTransaction as ft
	INNER JOIN dbo.financialTransactionItem as fti ON
		ft.FinancialTransactionId = fti.FinancialTransactionId
	OUTER APPLY
	(
		SELECT	
			TransactionDate
		FROM dbo.FinancialTransaction
		WHERE
			FinancialTransactionId = ft.__Reverses
	) AS eff_date
) AS x
WHERE	financialTransactionId <> OriginalTransactionID
