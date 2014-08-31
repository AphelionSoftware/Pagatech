    

CREATE VIEW [OLAP].[FactMonthlyGLSnapshot]
AS

SELECT 
	[FactMonthlyGLSnapshot].[FactMonthlyGLSnapshotID] 
	,[FactMonthlyGLSnapshot].[AggregatedCreditAmount] 
	,[FactMonthlyGLSnapshot].[AggregatedDebitAmount] 
	,[FactMonthlyGLSnapshot].[ClosingBalance] 
	,[FactMonthlyGLSnapshot].[CreditTransactionCount] 
	,[FactMonthlyGLSnapshot].[DebitTransactionCount] 
	,[FactMonthlyGLSnapshot].[MovementDirection] 
	,[FactMonthlyGLSnapshot].[OpeningBalance] 
	,[FactMonthlyGLSnapshot].[DimAsOfDateID] 
	,[FactMonthlyGLSnapshot].[DimCityID] 
	,[FactMonthlyGLSnapshot].[DimFinancialAccountID] 
	,[FactMonthlyGLSnapshot].[DimFinancialTransactionTypeID] 

FROM [Finance].[FactMonthlyGLSnapshot] [FactMonthlyGLSnapshot]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot';

