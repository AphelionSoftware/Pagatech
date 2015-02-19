	
CREATE VIEW OLAP.Classification_DimFinancialTransactionSubType AS
	(
		SELECT 
			edw.DimFinancialTxSubTypeID,edw.SourceKey,edw.Name
		FROM Classification.DimFinancialTransactionSubType AS edw
		WHERE edw.IsActive = 1
	);