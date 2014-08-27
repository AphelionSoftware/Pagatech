﻿    

CREATE VIEW [OLAP].[FactFinancialTransactions]
WITH SCHEMABINDING
AS

SELECT 
	[FactFinancialTransactions].[CreditAmount] 
	,[FactFinancialTransactions].[DebitAmount] 
	,[FactFinancialTransactions].[DimCityID] 
	,[FactFinancialTransactions].[DimCreatedDateID] 
	,[FactFinancialTransactions].[DimCreatedTimeID] 
	,[FactFinancialTransactions].[DimEffectiveDateID] 
	,[FactFinancialTransactions].[DimEffectiveTimeID] 
	,[FactFinancialTransactions].[DimFinancialAccountID] 
	,[FactFinancialTransactions].[DimFinancialTransactionTypeID] 
	,[FactFinancialTransactions].[DimOrganizationUnitLevel5ID] 
	,[FactFinancialTransactions].[DimPagaAccountID] 
	,[FactFinancialTransactions].[DimProcessTypeID] 
	,[FactFinancialTransactions].[DimTransactionDateID] 
	,[FactFinancialTransactions].[DimTransactionTimeID] 
	,[FactFinancialTransactions].[DimUserID] 
	,[FactFinancialTransactions].[FactFinancialTransactionID] 
	,[FactFinancialTransactions].[OriginalTransactionID] 
	,[FactFinancialTransactions].[RelatedTransactionID] 

FROM [Finance].[FactFinancialTransactions] [FactFinancialTransactions]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions';

