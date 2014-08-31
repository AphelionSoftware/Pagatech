    

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
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot';

