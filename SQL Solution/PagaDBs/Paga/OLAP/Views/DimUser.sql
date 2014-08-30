  

CREATE VIEW [OLAP].[DimUser]
AS

SELECT 
	[DimUser_6169299845028427303].[Code] AS [DimUserCode]
	,[DimUser_6169299845028427303].[DimRoleID] AS [DimUserDimRoleID]
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
	,[DimRole_5402597952638367812].[Code] AS [DimRoleCode]
	,[DimRole_5402597952638367812].[Description] AS [DimRoleDescription]
	,[DimRole_5402597952638367812].[Name] AS [DimRoleName]
	,[DimRole_5402597952638367812].[SourceKey] AS [DimRoleSourceKey]
FROM [Shared].[DimUser] AS [DimUser_6169299845028427303]

    JOIN [Shared].[DimRole] AS [DimRole_5402597952638367812] 
    
        ON  [DimUser_6169299845028427303].[DimRoleID] = [DimRole_5402597952638367812].[DimRoleID]



    