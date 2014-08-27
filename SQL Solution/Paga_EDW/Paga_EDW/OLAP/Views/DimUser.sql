  

CREATE VIEW [OLAP].[DimUser]
WITH SCHEMABINDING
AS

SELECT 
	[DimUser_6169299845028427303].[Code] AS [DimUserCode]
	,[DimUser_6169299845028427303].[DateOfBirthID] AS [DimUserDateOfBirthID]
	,[DimUser_6169299845028427303].[DimOrganizationUnitLevel5ID] AS [DimUserDimOrganizationUnitLevel5ID]
	,[DimUser_6169299845028427303].[DimPagaAccountID] AS [DimUserDimPagaAccountID]
	,[DimUser_6169299845028427303].[DimPagaAccountUserTypeID] AS [DimUserDimPagaAccountUserTypeID]
	,[DimUser_6169299845028427303].[DimUserID] AS [DimUserID]
	,[DimUser_6169299845028427303].[Email] AS [DimUserEmail]
	,[DimUser_6169299845028427303].[FirstName] AS [DimUserFirstName]
	,[DimUser_6169299845028427303].[IsEnabled] AS [DimUserIsEnabled]
	,[DimUser_6169299845028427303].[LastName] AS [DimUserLastName]
	,[DimUser_6169299845028427303].[MiddleName] AS [DimUserMiddleName]
	,[DimUser_6169299845028427303].[Name] AS [DimUserName]
	,[DimUser_6169299845028427303].[PhoneNumber] AS [DimUserPhoneNumber]
	,[DimUser_6169299845028427303].[Sex] AS [DimUserSex]
	,[DimUser_6169299845028427303].[SourceKey] AS [DimUserSourceKey]
	,[DimPagaAccountUserType_1086760736339796804].[Code] AS [DimPagaAccountUserTypeCode]
	,[DimPagaAccountUserType_1086760736339796804].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_1086760736339796804].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_1086760736339796804].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
FROM [Shared].[DimUser] AS [DimUser_6169299845028427303]

    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_1086760736339796804] 
    
        ON  [DimUser_6169299845028427303].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_1086760736339796804].[DimPagaAccountUserTypeID]



    