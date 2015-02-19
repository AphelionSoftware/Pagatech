	
CREATE VIEW OLAP.Classification_DimOrganizationVerificationStatus AS
	(
		SELECT 
			edw.DimOrganizationVerificationStatusID,edw.SourceKey,edw.Name
		FROM Classification.DimOrganizationVerificationStatus AS edw
		WHERE edw.IsActive = 1
	);