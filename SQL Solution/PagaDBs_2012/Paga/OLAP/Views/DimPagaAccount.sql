  

CREATE VIEW [OLAP].[DimPagaAccount]
AS

SELECT 
	[DimPagaAccount_5305964252872341138].[BankingStatus] AS [DimPagaAccountBankingStatus]
	,[DimPagaAccount_5305964252872341138].[Code] AS [DimPagaAccountCode]
	,[DimPagaAccount_5305964252872341138].[DimPagaAccountID] AS [DimPagaAccountID]
	,[DimPagaAccount_5305964252872341138].[DimPagaAccountStatusID] AS [DimPagaAccountStatusID]
	,[DimPagaAccount_5305964252872341138].[DimPagaAccountUserTypeID] AS [DimPagaAccountUserTypeID]
	,[DimPagaAccount_5305964252872341138].[DimUserID] AS [DimPagaAccountDimUserID]
	,[DimPagaAccount_5305964252872341138].[ExternalAccountNumber] AS [DimPagaAccountExternalAccountNumber]
	,[DimPagaAccount_5305964252872341138].[hasOnlineAccount] AS [DimPagaAccounthasOnlineAccount]
	,[DimPagaAccount_5305964252872341138].[IsActive] AS [DimPagaAccountIsActive]
	,[DimPagaAccount_5305964252872341138].[IsEnabled] AS [DimPagaAccountIsEnabled]
	,[DimPagaAccount_5305964252872341138].[Name] AS [DimPagaAccountName]
	,[DimPagaAccount_5305964252872341138].[PagaAccountNumber] AS [DimPagaAccountPagaAccountNumber]
	,[DimPagaAccount_5305964252872341138].[SourceKey] AS [DimPagaAccountSourceKey]
	,[DimPagaAccountStatus_1073944112317181929].[Code] AS [DimPagaAccountStatusCode]
	,[DimPagaAccountStatus_1073944112317181929].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_1073944112317181929].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimPagaAccountUserType_7570010459353974533].[Code] AS [DimPagaAccountUserTypeCode]
	,[DimPagaAccountUserType_7570010459353974533].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_7570010459353974533].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_7570010459353974533].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
	,[DimUser_2946388366977710995].[Code] AS [DimUserCode]
	,[DimUser_2946388366977710995].[DimRoleID] AS [DimUserDimRoleID]
	,[DimUser_2946388366977710995].[Email] AS [DimUserEmail]
	,[DimUser_2946388366977710995].[FirstName] AS [DimUserFirstName]
	,[DimUser_2946388366977710995].[IsEnabled] AS [DimUserIsEnabled]
	,[DimUser_2946388366977710995].[LastName] AS [DimUserLastName]
	,[DimUser_2946388366977710995].[MiddleName] AS [DimUserMiddleName]
	,[DimUser_2946388366977710995].[Name] AS [DimUserName]
	,[DimUser_2946388366977710995].[PhoneNumber] AS [DimUserPhoneNumber]
	,[DimUser_2946388366977710995].[Sex] AS [DimUserSex]
	,[DimUser_2946388366977710995].[SourceKey] AS [DimUserSourceKey]
	,[DimRole_1690017989258771966].[Code] AS [DimRoleCode]
	,[DimRole_1690017989258771966].[Description] AS [DimRoleDescription]
	,[DimRole_1690017989258771966].[Name] AS [DimRoleName]
	,[DimRole_1690017989258771966].[SourceKey] AS [DimRoleSourceKey]
FROM [Shared].[DimPagaAccount] AS [DimPagaAccount_5305964252872341138]

    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_1073944112317181929] 
    
        ON  [DimPagaAccount_5305964252872341138].[DimPagaAccountStatusID] = [DimPagaAccountStatus_1073944112317181929].[DimPagaAccountStatusID]

    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_7570010459353974533] 
    
        ON  [DimPagaAccount_5305964252872341138].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_7570010459353974533].[DimPagaAccountUserTypeID]

    JOIN [Shared].[DimUser] AS [DimUser_2946388366977710995] 
    
    JOIN [Shared].[DimRole] AS [DimRole_1690017989258771966] 
    
        ON  [DimUser_2946388366977710995].[DimRoleID] = [DimRole_1690017989258771966].[DimRoleID]

        ON  [DimPagaAccount_5305964252872341138].[DimUserID] = [DimUser_2946388366977710995].[DimUserID]



    