	
CREATE VIEW OLAP.Finance_FactGLTransaction AS
	(
		SELECT 
			edw.FactGLTxID,edw.SourceKey,edw.DimGLCodeID,edw.TextDescription,edw.DimFinancialAccountID,edw.FactFinancialTxID,edw.TransactionLineNumber,edw.CreditAmount,edw.DebitAmount,edw.Movement
		FROM Finance.FactGLTransaction AS edw
		WHERE edw.IsActive = 1
	);