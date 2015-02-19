	
CREATE VIEW OLAP.Classification_DimIntegrationTransactionType AS
	(
		SELECT 
			edw.DimIntegrationTxTypeID,edw.SourceKey,edw.Name
		FROM Classification.DimIntegrationTransactionType AS edw
		WHERE edw.IsActive = 1
	);