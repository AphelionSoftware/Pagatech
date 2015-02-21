
CREATE VIEW [OLAP].Shared_DimCompletedDate AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw

	);