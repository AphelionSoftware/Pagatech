    

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



        