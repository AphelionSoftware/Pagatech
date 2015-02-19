	
CREATE VIEW OLAP.Classification_DimOrganizationSubscriptionStatus AS
	(
		SELECT 
			edw.DimOrganizationSubscriptionStatusID,edw.SourceKey,edw.Name
		FROM Classification.DimOrganizationSubscriptionStatus AS edw
		WHERE edw.IsActive = 1
	);