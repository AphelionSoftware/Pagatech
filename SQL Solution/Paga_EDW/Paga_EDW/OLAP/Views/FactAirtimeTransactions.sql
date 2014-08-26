    

CREATE VIEW [OLAP].[FactAirtimeTransactions]
AS

SELECT 
	[FactAirtimeTransactions].[FactAirtimeTransactionsID] 
	,[FactAirtimeTransactions].[CreditAmount] 
	,[FactAirtimeTransactions].[DebitAmount] 
	,[FactAirtimeTransactions].[DimCityID] 
	,[FactAirtimeTransactions].[DimDateID] 
	,[FactAirtimeTransactions].[DimFinancialAccountID] 
	,[FactAirtimeTransactions].[DimFinancialTransactionTypeID] 
	,[FactAirtimeTransactions].[DimOrganizationUnitLevel5ID] 
	,[FactAirtimeTransactions].[DimPagaAccountID] 
	,[FactAirtimeTransactions].[DimTimeID] 
	,[FactAirtimeTransactions].[RunID] 

FROM [Airtime].[FactAirtimeTransactions] [FactAirtimeTransactions]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions';

