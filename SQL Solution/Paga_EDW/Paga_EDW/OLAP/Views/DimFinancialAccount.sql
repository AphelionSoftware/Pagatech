  

CREATE VIEW [OLAP].[DimFinancialAccount]
WITH SCHEMABINDING
AS

SELECT 
	[DimFinancialAccount_5479953088314597640].[AccountNumber] AS [DimFinancialAccountAccountNumber]
	,[DimFinancialAccount_5479953088314597640].[Code] AS [DimFinancialAccountCode]
	,[DimFinancialAccount_5479953088314597640].[DimAccountHolderUserID] AS [DimFinancialAccountDimAccountHolderUserID]
	,[DimFinancialAccount_5479953088314597640].[DimBankAccountID] AS [DimFinancialAccountDimBankAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimCOALevel4ID] AS [DimFinancialAccountDimCOALevel4ID]
	,[DimFinancialAccount_5479953088314597640].[DimCurrencyID] AS [DimFinancialAccountDimCurrencyID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountID] AS [DimFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountTypeID] AS [DimFinancialAccountTypeID]
	,[DimFinancialAccount_5479953088314597640].[DimHoldingFinancialAccountID] AS [DimFinancialAccountDimHoldingFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[Name] AS [DimFinancialAccountName]
	,[DimFinancialAccount_5479953088314597640].[OpeningBalance] AS [DimFinancialAccountOpeningBalance]
	,[DimFinancialAccount_5479953088314597640].[RestrictedBalance] AS [DimFinancialAccountRestrictedBalance]
	,[DimFinancialAccount_5479953088314597640].[SourceKey] AS [DimFinancialAccountSourceKey]
	,[DimFinancialAccount_5479953088314597640].[TotalBalance] AS [DimFinancialAccountTotalBalance]
	,[DimUser_1119685481303085632].[Code] AS [DimUserCode]
	,[DimUser_1119685481303085632].[DateOfBirthID] AS [DimUserDateOfBirthID]
	,[DimUser_1119685481303085632].[DimOrganizationUnitLevel5ID] AS [DimUserDimOrganizationUnitLevel5ID]
	,[DimUser_1119685481303085632].[DimPagaAccountID] AS [DimUserDimPagaAccountID]
	,[DimUser_1119685481303085632].[DimPagaAccountUserTypeID] AS [DimUserDimPagaAccountUserTypeID]
	,[DimUser_1119685481303085632].[DimUserID] AS [DimUserID]
	,[DimUser_1119685481303085632].[Email] AS [DimUserEmail]
	,[DimUser_1119685481303085632].[FirstName] AS [DimUserFirstName]
	,[DimUser_1119685481303085632].[IsEnabled] AS [DimUserIsEnabled]
	,[DimUser_1119685481303085632].[LastName] AS [DimUserLastName]
	,[DimUser_1119685481303085632].[MiddleName] AS [DimUserMiddleName]
	,[DimUser_1119685481303085632].[Name] AS [DimUserName]
	,[DimUser_1119685481303085632].[PhoneNumber] AS [DimUserPhoneNumber]
	,[DimUser_1119685481303085632].[Sex] AS [DimUserSex]
	,[DimUser_1119685481303085632].[SourceKey] AS [DimUserSourceKey]
	,[DimPagaAccountUserType_2589798769153261597].[Code] AS [DimPagaAccountUserTypeCode]
	,[DimPagaAccountUserType_2589798769153261597].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_2589798769153261597].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_2589798769153261597].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
FROM [Finance].[DimFinancialAccount] AS [DimFinancialAccount_5479953088314597640]

    JOIN [Shared].[DimUser] AS [DimUser_1119685481303085632] 
    
    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_2589798769153261597] 
    
        ON  [DimUser_1119685481303085632].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_2589798769153261597].[DimPagaAccountUserTypeID]

        ON  [DimFinancialAccount_5479953088314597640].[DimAccountHolderUserID] = [DimUser_1119685481303085632].[DimUserID]



    