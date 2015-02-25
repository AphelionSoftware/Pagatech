
CREATE VIEW [OLAP].[Classification_DimReversalStatus] AS
	(
		 
			SELECT  1 AS DimReversalStatusID, 'Yes' AS ReversalStatus
			UNION ALL
			SELECT 0 AS DimReversalStatusID, 'No' AS ReversalStatus

	);