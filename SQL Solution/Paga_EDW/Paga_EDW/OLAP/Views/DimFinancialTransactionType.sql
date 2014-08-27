  

CREATE VIEW [OLAP].[DimFinancialTransactionType]
WITH SCHEMABINDING
AS

SELECT 
	[DimFinancialTransactionType_2464802176757215255].[Code] AS [DimFinancialTransactionTypeCode]
	,[DimFinancialTransactionType_2464802176757215255].[Description] AS [DimFinancialTransactionTypeDescription]
	,[DimFinancialTransactionType_2464802176757215255].[DimFinancialTransactionTypeID] AS [DimFinancialTransactionTypeID]
	,[DimFinancialTransactionType_2464802176757215255].[Name] AS [DimFinancialTransactionTypeName]
	,[DimFinancialTransactionType_2464802176757215255].[SourceKey] AS [DimFinancialTransactionTypeSourceKey]
FROM [Classification].[DimFinancialTransactionType] AS [DimFinancialTransactionType_2464802176757215255]



    