    

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



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransaction';

