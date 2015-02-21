
CREATE VIEW [OLAP].Shared_DimIntegrationTxDate AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw

	);