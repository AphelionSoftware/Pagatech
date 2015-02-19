	
CREATE VIEW OLAP.Classification_DimProcessChannel AS
	(
		SELECT 
			edw.DimProcessChannelID,edw.SourceKey,edw.Name,edw.TextDesciption
		FROM Classification.DimProcessChannel AS edw
		WHERE edw.IsActive = 1
	);