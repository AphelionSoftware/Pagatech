	
CREATE VIEW OLAP.Classification_DimPagaAccountStatus AS
	(
		SELECT 
			edw.DimPagaAccountStatusID,edw.SourceKey,edw.Name
		FROM Classification.DimPagaAccountStatus AS edw
		WHERE edw.IsActive = 1
	);