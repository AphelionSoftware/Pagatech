  

CREATE VIEW [OLAP].[DimFinancialTransactionType]
AS

SELECT 
	[DimFinancialTransactionType_2464802176757215255].[Code] AS [FinancialTransactionTypeCode]
	,[DimFinancialTransactionType_2464802176757215255].[Description] AS [FinancialTransactionTypeDescription]
	,[DimFinancialTransactionType_2464802176757215255].[DimFinancialTransactionTypeID] AS [FinancialTransactionTypeDimFinancialTransactionTypeID]
	,[DimFinancialTransactionType_2464802176757215255].[Name] AS [FinancialTransactionTypeName]
	,[DimFinancialTransactionType_2464802176757215255].[SourceKey] AS [FinancialTransactionTypeSourceKey]
	,[DimFinancialTransactionType_2464802176757215255].[sysCreatedBy] AS [FinancialTransactionTypesysCreatedBy]
	,[DimFinancialTransactionType_2464802176757215255].[sysCreatedOn] AS [FinancialTransactionTypesysCreatedOn]
	,[DimFinancialTransactionType_2464802176757215255].[sysModifiedBy] AS [FinancialTransactionTypesysModifiedBy]
	,[DimFinancialTransactionType_2464802176757215255].[sysModifiedOn] AS [FinancialTransactionTypesysModifiedOn]
FROM [Shared].[DimFinancialTransactionType] AS [DimFinancialTransactionType_2464802176757215255]



    