
CREATE VIEW [OLAP].Shared_DimEffectiveDate AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw

	);