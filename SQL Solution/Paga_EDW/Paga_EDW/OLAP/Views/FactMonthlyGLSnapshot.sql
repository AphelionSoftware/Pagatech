    

CREATE VIEW [OLAP].[FactMonthlyGLSnapshot]
WITH SCHEMABINDING
AS

SELECT 
	[FactMonthlyGLSnapshot].[FactMonthlyGLSnapshotID] 
	,[FactMonthlyGLSnapshot].[AggregatedCreditAmount] 
	,[FactMonthlyGLSnapshot].[AggregatedDebitAmount] 
	,[FactMonthlyGLSnapshot].[ClosingBalance] 
	,[FactMonthlyGLSnapshot].[CreditTransactionCount] 
	,[FactMonthlyGLSnapshot].[DebitTransactionCount] 
	,[FactMonthlyGLSnapshot].[DimAsOfDateID] 
	,[FactMonthlyGLSnapshot].[DimCityID] 
	,[FactMonthlyGLSnapshot].[DimFinancialAccountID] 
	,[FactMonthlyGLSnapshot].[DimFinancialTransactionTypeID] 
	,[FactMonthlyGLSnapshot].[DimOrganizationUnitLevel5ID] 
	,[FactMonthlyGLSnapshot].[MovementDirection] 
	,[FactMonthlyGLSnapshot].[OpeningBalance] 

FROM [Finance].[FactMonthlyGLSnapshot] [FactMonthlyGLSnapshot]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot';

