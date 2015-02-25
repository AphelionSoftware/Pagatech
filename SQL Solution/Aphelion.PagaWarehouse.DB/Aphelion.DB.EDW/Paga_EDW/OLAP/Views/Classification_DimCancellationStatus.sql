
CREATE VIEW [OLAP].[Classification_DimCancellationStatus] AS
	(
		 
			SELECT  1 AS DimCancellationStatusID, 'Yes' AS CancellationStatus
			UNION ALL
			SELECT 0 AS DimCancellationStatusID, 'No' AS CancellationStatus

	);