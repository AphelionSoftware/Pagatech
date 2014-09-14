    

CREATE VIEW [OLAP].[FactAirtimeTransaction]
AS

SELECT 
	[FactAirtimeTransaction].[FactAirtimeTransactionID] 
	,[FactAirtimeTransaction].[CreditAmount] 
	,[FactAirtimeTransaction].[DebitAmount] 
	,[FactAirtimeTransaction].[SourceKey] 
	,[FactAirtimeTransaction].[DimCityID] 
	,[FactAirtimeTransaction].[DimDateID] 
	,[FactAirtimeTransaction].[DimFinancialAccountID] 
	,[FactAirtimeTransaction].[DimFinancialTransactionTypeID] 
	,[FactAirtimeTransaction].[DimPagaAccountID] 
	,[FactAirtimeTransaction].[DimTimeID] 

FROM [Airtime].[FactAirtimeTransaction] [FactAirtimeTransaction]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction';

