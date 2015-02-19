	
CREATE VIEW OLAP.Classification_DimFinancialTransactionType AS
	(
		SELECT 
			edw.DimFinancialTxTypeID,edw.SourceKey,edw.Name,edw.FinancialTxCategory
		FROM Classification.DimFinancialTransactionType AS edw
		WHERE edw.IsActive = 1
	);