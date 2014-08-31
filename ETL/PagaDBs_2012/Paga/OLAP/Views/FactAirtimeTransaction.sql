    

CREATE VIEW [OLAP].[FactAirtimeTransaction]
AS

SELECT 
	[FactAirtimeTransaction].[FactAirtimeTransactionID] 
	,[FactAirtimeTransaction].[CreditAmount] 
	,[FactAirtimeTransaction].[DebitAmount] 
	,[FactAirtimeTransaction].[DimCityID] 
	,[FactAirtimeTransaction].[DimDateID] 
	,[FactAirtimeTransaction].[DimFinancialAccountID] 
	,[FactAirtimeTransaction].[DimFinancialTransactionTypeID] 
	,[FactAirtimeTransaction].[DimPagaAccountID] 
	,[FactAirtimeTransaction].[DimTimeID] 

FROM [Airtime].[FactAirtimeTransaction] [FactAirtimeTransaction]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransaction';

