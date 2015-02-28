


CREATE VIEW [OLAP].[Shared_DimIntegrationTxDate] AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw
		WHERE edw.DateID >= (SELECT MIN(FT.DimIntegrationTxDateID) FROM Shared.FactIntegrationTransaction FT)
		AND edw.DateID <= (SELECT MAX(FT.DimIntegrationTxDateID) FROM Shared.FactIntegrationTransaction FT)  
	);