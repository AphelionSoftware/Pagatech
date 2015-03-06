


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
			FinancialTransactionID = COALESCE(ft0.SourceKey, -1)
		FROM Finance.FactGLTransaction AS edw
		OUTER APPLY
		(
			SELECT TOP 1 ft.SourceKey FROM Finance.FactFinancialTransaction AS ft 
			WHERE 
				edw.FactFinancialTxID = ft.FactFinancialTxID
			
		) AS ft0
		WHERE 
			edw.IsActive = 1
		
	);