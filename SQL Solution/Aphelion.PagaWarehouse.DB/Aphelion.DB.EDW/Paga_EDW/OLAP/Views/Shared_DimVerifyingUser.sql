﻿CREATE VIEW [OLAP].[Shared_DimVerifyingUser] AS
	(
		SELECT 
			DimVerifyingUser = edw.DimUserID,
			edw.SourceKey,edw.DimDateOfBirthID,edw.FirstName,edw.MiddleName,edw.LastName,edw.Gender,edw.PhoneNumber,edw.Email,edw.IsEnabled,edw.DimPrimaryRoleID,edw.DimCreatedDateID,edw.Name
		FROM Shared.DimUser AS edw
		WHERE edw.IsActive = 1

);