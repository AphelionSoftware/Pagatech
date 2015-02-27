

CREATE VIEW [OLAP].[Shared_DimTransactionDate] AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw
		WHERE edw.DateID >= (SELEct MIN(FT.DimFinancialTxDateID) FROM Finance.FactFinancialTransaction FT)
		AND edw.Date < dateadd(year, 1, getdate()) 
	);