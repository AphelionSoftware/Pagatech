	
CREATE VIEW OLAP.Classification_DimProcessStatus AS
	(
		SELECT 
			edw.DimProcessStatusID,edw.SourceKey,edw.Name
		FROM Classification.DimProcessStatus AS edw
		WHERE edw.IsActive = 1
	);