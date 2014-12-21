    

CREATE VIEW [OLAP].[FactDailyGLSnapshot]
AS

SELECT 
	[FactDailyGLSnapshot].[FactDailyGLSnapshotID] 
	,[FactDailyGLSnapshot].[AggregatedCreditAmount] 
	,[FactDailyGLSnapshot].[AggregatedDebitAmount] 
	,[FactDailyGLSnapshot].[ClosingBalance] 
	,[FactDailyGLSnapshot].[CreditTransactionCount] 
	,[FactDailyGLSnapshot].[DebitTransactionCount] 
	,[FactDailyGLSnapshot].[MovementDirection] 
	,[FactDailyGLSnapshot].[OpeningBalance] 
	,[FactDailyGLSnapshot].[DimAsOfDateID] 
	,[FactDailyGLSnapshot].[DimCityID] 
	,[FactDailyGLSnapshot].[DimFinancialAccountID] 
	,[FactDailyGLSnapshot].[DimFinancialTransactionTypeID] 

FROM [Finance].[FactDailyGLSnapshot] [FactDailyGLSnapshot]



        