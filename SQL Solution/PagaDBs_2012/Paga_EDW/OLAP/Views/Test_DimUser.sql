
CREATE VIEW [OLAP].[Test_DimUser]
AS
(
	SELECT
		u.DimUserID, 
		u.SourceKey AS DimUserSourceKey, 
		u.Name AS DimUserName, 
		u.DateOfBirthID, 
		u.DimOrganizationUnitLevel4ID, 
		u.FirstName, 
		u.MiddleName, 
		u.LastName, 
		u.Sex, 
		u.PhoneNumber, 
		u.Email, 
		u.IsEnabled AS UserIsEnabled,
		u.DimPagaAccountID
	FROM [Shared].[DimUser] AS u
)