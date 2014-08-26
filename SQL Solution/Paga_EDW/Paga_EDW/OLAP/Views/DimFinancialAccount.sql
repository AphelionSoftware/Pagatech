  

CREATE VIEW [OLAP].[DimFinancialAccount]
AS

SELECT 
	[DimFinancialAccount_5479953088314597640].[AccountNumber] AS [FinancialAccountAccountNumber]
	,[DimFinancialAccount_5479953088314597640].[Code] AS [FinancialAccountCode]
	,[DimFinancialAccount_5479953088314597640].[DimAccountHolderID] AS [FinancialAccountDimAccountHolderID]
	,[DimFinancialAccount_5479953088314597640].[DimBankAccountID] AS [FinancialAccountDimBankAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimCOALevel4ID] AS [FinancialAccountDimCOALevel4ID]
	,[DimFinancialAccount_5479953088314597640].[DimCurrencyID] AS [FinancialAccountDimCurrencyID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountID] AS [FinancialAccountDimFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountTypeID] AS [FinancialAccountDimFinancialAccountTypeID]
	,[DimFinancialAccount_5479953088314597640].[DimHoldingFinancialAccountID] AS [FinancialAccountDimHoldingFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[Name] AS [FinancialAccountName]
	,[DimFinancialAccount_5479953088314597640].[OpeningBalance] AS [FinancialAccountOpeningBalance]
	,[DimFinancialAccount_5479953088314597640].[RestrictedBalance] AS [FinancialAccountRestrictedBalance]
	,[DimFinancialAccount_5479953088314597640].[SourceKey] AS [FinancialAccountSourceKey]
	,[DimFinancialAccount_5479953088314597640].[sysCreatedBy] AS [FinancialAccountsysCreatedBy]
	,[DimFinancialAccount_5479953088314597640].[sysCreatedOn] AS [FinancialAccountsysCreatedOn]
	,[DimFinancialAccount_5479953088314597640].[sysModifiedBy] AS [FinancialAccountsysModifiedBy]
	,[DimFinancialAccount_5479953088314597640].[sysModifiedOn] AS [FinancialAccountsysModifiedOn]
	,[DimFinancialAccount_5479953088314597640].[TotalBalance] AS [FinancialAccountTotalBalance]
FROM [Shared].[DimFinancialAccount] AS [DimFinancialAccount_5479953088314597640]



    