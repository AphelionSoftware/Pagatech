
CREATE VIEW [OLAP].[Shared_DimInitiatingUser] AS
	(
		SELECT 
			DimInitiatingUserID = edw.DimUserID,
			edw.SourceKey,
			edw.DimDateOfBirthID,
			edw.FirstName,
			edw.MiddleName,
			edw.LastName,
			edw.Gender,
			edw.IsEnabled,
			RoleName = r.Name,
			edw.DimCreatedDateID,
			edw.Name
		FROM Shared.DimUser AS edw
		INNER JOIN shared.DimRole AS r ON 
			edw.DimPrimaryRoleID = r.DimRoleID
		WHERE edw.IsActive = 1

);