
CREATE VIEW [OLAP].[FactMonthlyUserActivitySnapshot]
AS
(
	SELECT 
		[DimInitiatingUserID],
		ActivityMonth = (((ft.DimFinancialTxDateID/100)*100)+1),
		tx_count = COUNT([FactFinancialTxID]),
		tx_amount = SUM([FinancialTx_Amount])
		
	FROM [Shared].[FactProcessEvent] as pe
	INNER JOIN [Finance].[FactFinancialTransaction] AS ft ON
		ft.FactProcessEventID = pe.FactProcessEventID
	WHERE	
		ft.Cancelled = 0
		AND ft.IsActive = 1
	GROUP BY
		DimInitiatingUserID,
		(ft.DimFinancialTxDateID/100)
)