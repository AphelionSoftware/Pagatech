	
CREATE VIEW OLAP.Classification_DimPagaAccountUserType AS
	(
		SELECT 
			edw.DimPagaAccountUserTypeID,edw.SourceKey,edw.Name
		FROM Classification.DimPagaAccountUserType AS edw
		WHERE edw.IsActive = 1
	);