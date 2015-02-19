	
CREATE VIEW OLAP.Classification_DimProcessType AS
	(
		SELECT 
			edw.DimProcessTypeID,edw.SourceKey,edw.Name,edw.DescriptionText
		FROM Classification.DimProcessType AS edw
		WHERE edw.IsActive = 1
	);