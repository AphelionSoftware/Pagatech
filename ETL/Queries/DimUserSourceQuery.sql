SELECT
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I'),
	Name = CONVERT(VARCHAR(255),
		CASE 
			WHEN (FirstName IS NULL AND LastName IS NULL) THEN 
				CASE
					WHEN UserType = 'organization' THEN COALESCE((OrgName +' User'), 'Unidentified Organization User')
					WHEN UserType IS NULL THEN 'Unidentified User'
					ELSE 'Unidentified ' +UserType +' User'
				END
			WHEN (FirstName IS NULL AND LastName IS NOT NULL) THEN LastName
			WHEN (LastName IS NULL AND FirstName IS NOT NULL) THEN FirstName
			WHEN (LastName IS NOT NULL AND FirstName IS NOT NULL) THEN FirstName + ' ' + LastName
		END
		),
	UserType= COALESCE(UserType, 'unknown'),
	DateOfBirthID = COALESCE(DateOfBirthID, -1), 
	DimPagaAccountSourceKey,
	DimOrganizationUnitLevel4SourceKey,
	FirstName, 
	MiddleName, 
	LastName, 
	Sex, 
	PhoneNumber, 
	Email, 
	IsEnabled,
	CreatedDateID
FROM
(
	SELECT 
		SourceKey = u.UserId,
		ouu.OrgName,
		FirstName = CASE WHEN LEN(u.FirstName) = 0 THEN NULL ELSE CONVERT(VARCHAR(255), u.FirstName) END,
		MiddleName = CASE WHEN LEN(u.MiddleName) = 0 THEN NULL ELSE CONVERT(VARCHAR(255),u.MiddleName) END,
		LastName = CASE WHEN LEN(u.LastName) = 0 THEN NULL ELSE CONVERT(VARCHAR(255),u.LastName) END,
		Sex = u.GenderId,
		u.PhoneNumber,
		Email = CONVERT(VARCHAR(100),u.Email),
		DateofBirthID = CONVERT(INT,CONVERT(VARCHAR(8),u.dateOfBirth,112)),
		CreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),u.CreatedDate,112)),
		UserType = u.Namespace,
		DimPagaAccountSourceKey,
		DimOrganizationUnitLevel4SourceKey = ouu.OrganizationUnitId,
		u.IsEnabled
	FROM dbo.[USER] as u 
	LEFT JOIN 	
	(
		SELECT 
			pau.UserId,
			MAX(pa.PagaAccountId) AS DimPagaAccountSourceKey
			
		FROM [dbo].[PagaAccount] AS pa
		LEFT JOIN dbo.PagaAccountUser AS pau ON
			pa.PagaAccountId = pau.PagaAccountId
			AND pau.PagaAccountUserTypeId = 'PRIMARY'
		GROUP BY
			pau.userID
	) AS pa ON
		pa.UserId = u.UserId
	LEFT JOIN 
	(
		SELECT
			OrgName = o.Name,
			ouu1.UserId,
			ou.OrganizationUnitId
		FROM dbo.OrganizationUnitUser AS ouu1
		INNER JOIN dbo.organizationUnit AS ou ON 
			ouu1.OrganizationUnitId = ou.OrganizationUnitId
		INNER JOIN dbo.Organization AS o
			ON ou.OrganizationId = o.OrganizationId
	) AS ouu ON 
		u.UserId = ouu.userId
) AS base_query

	LEFT JOIN
		(
			SELECT 
				NULL AS change_log_SourceKey,
				NULL AS change_operation
		) AS change_log ON
			base_query.SourceKey = change_log.change_log_SourceKey