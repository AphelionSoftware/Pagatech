	
CREATE VIEW OLAP.Classification_DimAgentCommissionType AS
	(
		SELECT 
			edw.DimAgentCommissionTypeID,edw.SourceKey,edw.Name
		FROM Classification.DimAgentCommissionType AS edw
		WHERE edw.IsActive = 1
	);