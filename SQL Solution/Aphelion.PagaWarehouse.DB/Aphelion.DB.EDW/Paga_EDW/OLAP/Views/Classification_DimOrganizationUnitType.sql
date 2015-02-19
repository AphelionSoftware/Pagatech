	
CREATE VIEW OLAP.Classification_DimOrganizationUnitType AS
	(
		SELECT 
			edw.DimOrganizationUnitTypeID,edw.SourceKey,edw.Name
		FROM Classification.DimOrganizationUnitType AS edw
		WHERE edw.IsActive = 1
	);