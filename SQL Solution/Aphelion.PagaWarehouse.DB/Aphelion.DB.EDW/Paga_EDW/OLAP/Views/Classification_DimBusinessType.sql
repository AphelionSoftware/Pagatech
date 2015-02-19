	
CREATE VIEW OLAP.Classification_DimBusinessType AS
	(
		SELECT 
			edw.DimBusinessTypeID,edw.SourceKey,edw.Name
		FROM Classification.DimBusinessType AS edw
		WHERE edw.IsActive = 1
	);