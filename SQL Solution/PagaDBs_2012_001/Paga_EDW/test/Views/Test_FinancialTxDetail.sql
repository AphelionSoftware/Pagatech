


CREATE VIEW [test].[Test_FinancialTxDetail]
AS
(

	SELECT 
		d.FactFinancialTxDetailID,
		d.SourceKey AS FactFinancialTxDetailSourceKey,
		d.DimFinancialAccountID,
		d.DimPagaAccountID,
		d.DebitAmount,
		d.CreditAmount,
		d.MovementAmount,
		d.FactFinancialTxHeaderID
	FROM Finance.FactFinancialTxDetail AS d
	WHERE
		EXISTS
		(
			SELECT
				h.FactFinancialTxHeaderID 
			FROM Finance.FactFinancialTxHeader AS h
			WHERE 
				DimTransactionDateID = 20140701
				AND d.FactFinancialTxHeaderID = h.FactFinancialTxHeaderID
		)
)