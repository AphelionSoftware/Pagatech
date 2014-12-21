    

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



        