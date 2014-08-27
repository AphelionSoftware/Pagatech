    

CREATE VIEW [OLAP].[FactDailyGLSnapshot]
WITH SCHEMABINDING
AS

SELECT 
	[FactDailyGLSnapshot].[FactDailyGLSnapshotID] 
	,[FactDailyGLSnapshot].[AggregatedCreditAmount] 
	,[FactDailyGLSnapshot].[AggregatedDebitAmount] 
	,[FactDailyGLSnapshot].[ClosingBalance] 
	,[FactDailyGLSnapshot].[CreditTransactionCount] 
	,[FactDailyGLSnapshot].[DebitTransactionCount] 
	,[FactDailyGLSnapshot].[DimAsOfDateID] 
	,[FactDailyGLSnapshot].[DimCityID] 
	,[FactDailyGLSnapshot].[DimFinancialAccountID] 
	,[FactDailyGLSnapshot].[DimFinancialTransactionTypeID] 
	,[FactDailyGLSnapshot].[DimOrganizationUnitLevel5ID] 
	,[FactDailyGLSnapshot].[MovementDirection] 
	,[FactDailyGLSnapshot].[OpeningBalance] 

FROM [Finance].[FactDailyGLSnapshot] [FactDailyGLSnapshot]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot';

