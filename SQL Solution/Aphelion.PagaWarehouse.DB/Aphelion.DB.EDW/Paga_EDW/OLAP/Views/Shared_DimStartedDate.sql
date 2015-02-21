
CREATE VIEW [OLAP].Shared_DimStartedDate AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw

	);