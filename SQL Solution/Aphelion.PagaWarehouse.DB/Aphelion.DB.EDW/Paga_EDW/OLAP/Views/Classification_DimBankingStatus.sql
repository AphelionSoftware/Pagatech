CREATE VIEW OLAP.Classification_DimBankingStatus AS
	(
		SELECT 
			edw.DimBankingStatusID,edw.SourceKey,edw.Name
		FROM Classification.DimBankingStatus AS edw
		WHERE edw.IsActive = 1
	);