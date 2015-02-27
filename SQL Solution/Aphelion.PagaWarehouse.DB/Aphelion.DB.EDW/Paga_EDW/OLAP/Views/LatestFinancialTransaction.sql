
/****** Object:  View [OLAP].[Finance_FactFinancialTransaction]    Script Date: 2/27/2015 1:45:59 PM ******/


	
CREATE VIEW [OLAP].[LatestFinancialTransaction] AS
	(
		
		SELECT
			ft.FactFinancialTxID, 
			TransactionDate = CAST(d.Date AS Date),
			TransactionTime = CAST(t.FullTime AS Time(0))
		FROM Finance.FactFinancialTransaction as ft
		INNER JOIN shared.DimDate AS d ON
			ft.DimFinancialTxDateID = d.DateID
		INNER JOIN shared.DimTime AS t ON
			ft.DimFinancialTxTimeID = t.DimTimeID
		WHERE	
			ft.FactFinancialTxID = 
			(
				SELECT 
					MAX(edw.FactFinancialTxID) AS LatestFinancialTxID
				FROM Finance.FactFinancialTransaction AS edw
				WHERE 
					edw.IsActive = 1
			) 

		
	);