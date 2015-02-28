


CREATE VIEW [OLAP].[Shared_DimEffectiveDate] AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw
		WHERE edw.DateID >= (SELECT MIN(FT.DimFinancialTxDateID) FROM Finance.FactFinancialTransaction FT)
		AND edw.DateID <= (SELECT MAX(FT.DimFinancialTxDateID) FROM Finance.FactFinancialTransaction FT) 
	);