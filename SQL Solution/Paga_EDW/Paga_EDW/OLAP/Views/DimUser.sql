  

CREATE VIEW [OLAP].[DimUser]
AS

SELECT 
	[DimUser_6169299845028427303].[Code] AS [UserCode]
	,[DimUser_6169299845028427303].[DateOfBirthID] AS [UserDateOfBirthID]
	,[DimUser_6169299845028427303].[DimOrganizationUnitLevel5ID] AS [UserDimOrganizationUnitLevel5ID]
	,[DimUser_6169299845028427303].[DimPagaAccountID] AS [UserDimPagaAccountID]
	,[DimUser_6169299845028427303].[DimPagaAccountUserTypeID] AS [UserDimPagaAccountUserTypeID]
	,[DimUser_6169299845028427303].[DimUserID] AS [UserDimUserID]
	,[DimUser_6169299845028427303].[Email] AS [UserEmail]
	,[DimUser_6169299845028427303].[FirstName] AS [UserFirstName]
	,[DimUser_6169299845028427303].[IsEnabled] AS [UserIsEnabled]
	,[DimUser_6169299845028427303].[LastName] AS [UserLastName]
	,[DimUser_6169299845028427303].[MiddleName] AS [UserMiddleName]
	,[DimUser_6169299845028427303].[Name] AS [UserName]
	,[DimUser_6169299845028427303].[PhoneNumber] AS [UserPhoneNumber]
	,[DimUser_6169299845028427303].[Sex] AS [UserSex]
	,[DimUser_6169299845028427303].[SourceKey] AS [UserSourceKey]
	,[DimUser_6169299845028427303].[sysCreatedBy] AS [UsersysCreatedBy]
	,[DimUser_6169299845028427303].[sysCreatedOn] AS [UsersysCreatedOn]
	,[DimUser_6169299845028427303].[sysModifiedBy] AS [UsersysModifiedBy]
	,[DimUser_6169299845028427303].[sysModifiedOn] AS [UsersysModifiedOn]
FROM [Shared].[DimUser] AS [DimUser_6169299845028427303]



    