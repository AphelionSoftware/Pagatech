  

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
	,[DimPagaAccountStatus_1073944112317181929].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_1073944112317181929].[SourceKey] AS [DimPagaAccountStatusSourceKey]
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
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';

