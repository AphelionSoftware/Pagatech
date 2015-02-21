
CREATE VIEW [OLAP].Shared_DimTransactionDate AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw

	);