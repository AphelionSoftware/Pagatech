


CREATE VIEW [OLAP].[Shared_DimStartedDate] AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw
		WHERE edw.DateID >= (SELECT MIN(FT.DimStartedDateID) FROM Shared.FactProcessEvent FT)
		AND edw.DateID <= (SELECT MAX(FT.DimStartedDateID) FROM Shared.FactProcessEvent FT)  
	);