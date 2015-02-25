
CREATE VIEW [OLAP].[Finance_FactGLTransaction] AS
	(
		SELECT 
			edw.FactGLTxID,
			edw.SourceKey,
			edw.DimGLCodeID,
			edw.TextDescription,
			edw.DimFinancialAccountID,
			edw.FactFinancialTxID,
			edw.TransactionLineNumber,
			edw.CreditAmount,
			edw.DebitAmount,
			edw.Movement,
			Balance = (edw.DebitAmount - edw.CreditAmount),
			FinancialTransactionID = ft.SourceKey
		FROM Finance.FactGLTransaction AS edw
		INNER JOIN Finance.FactFinancialTransaction AS ft ON edw.FactFinancialTxID = ft.FactFinancialTxID
		WHERE 
			edw.IsActive = 1
			--AND ft.DimFinancialTxDateID >= 20150101
	);