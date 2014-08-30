    

CREATE VIEW [OLAP].[FactFinancialTransaction]
AS

SELECT 
	[FactFinancialTransaction].[FactFinancialTransactionID] 
	,[FactFinancialTransaction].[CreditAmount] 
	,[FactFinancialTransaction].[DebitAmount] 
	,[FactFinancialTransaction].[DimCityID] 
	,[FactFinancialTransaction].[DimCreatedDateID] 
	,[FactFinancialTransaction].[DimCreatedTimeID] 
	,[FactFinancialTransaction].[DimEffectiveDateID] 
	,[FactFinancialTransaction].[DimEffectiveTimeID] 
	,[FactFinancialTransaction].[DimFinancialAccountID] 
	,[FactFinancialTransaction].[DimFinancialTransactionTypeID] 
	,[FactFinancialTransaction].[DimPagaAccountID] 
	,[FactFinancialTransaction].[DimProcessTypeID] 
	,[FactFinancialTransaction].[DimTransactionDateID] 
	,[FactFinancialTransaction].[DimTransactionTimeID] 
	,[FactFinancialTransaction].[DimUserID] 
	,[FactFinancialTransaction].[OriginalTransactionID] 
	,[FactFinancialTransaction].[RelatedTransactionID] 

FROM [Finance].[FactFinancialTransaction] [FactFinancialTransaction]



        