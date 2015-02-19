	
CREATE VIEW OLAP.Classification_DimIntegrationTransactionResult AS
	(
		SELECT 
			edw.DimIntegrationTxResultID,edw.SourceKey,edw.Name
		FROM Classification.DimIntegrationTransactionResult AS edw
		WHERE edw.IsActive = 1
	);