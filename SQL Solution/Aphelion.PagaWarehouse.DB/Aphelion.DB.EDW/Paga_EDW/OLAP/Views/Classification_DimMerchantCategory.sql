	
CREATE VIEW OLAP.Classification_DimMerchantCategory AS
	(
		SELECT 
			edw.DimMerchantCategoryID,edw.SourceKey,edw.Name
		FROM Classification.DimMerchantCategory AS edw
		WHERE edw.IsActive = 1
	);