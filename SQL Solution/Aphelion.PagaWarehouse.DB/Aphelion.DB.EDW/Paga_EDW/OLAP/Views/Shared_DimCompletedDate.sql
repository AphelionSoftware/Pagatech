


CREATE VIEW [OLAP].[Shared_DimCompletedDate] AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw
		WHERE edw.DateID >= (SELECT MIN(FT.DimCompletedDateID) FROM Shared.FactProcessEvent FT)
		AND edw.DateID <= (SELECT MAX(FT.DimCompletedDateID) FROM Shared.FactProcessEvent FT)  
	);