CREATE TABLE [Shared].[DimUser] (
    [DimUserID]      INT             NOT NULL,
    [SourceKey]      VARCHAR (255)   NOT NULL,
    [Name]           VARCHAR (255)   NOT NULL,
    [DateOfBirthID]  INT             NULL,
    [DimRoleID]      INT             NOT NULL,
    [FirstName]      VARCHAR (255)   NULL,
    [MiddleName]     VARCHAR (255)   NULL,
    [LastName]       VARCHAR (255)   NULL,
    [Sex]            VARCHAR(50)        NULL,
    [PhoneNumber]    VARBINARY (256) NULL,
    [Email]          VARCHAR (100)   NULL,
    [IsEnabled]      BIT             NULL,
    [SourceKeyHash]  BIGINT          NOT NULL,
    [DeltaHash]      BIGINT          NOT NULL,
    [sys_ModifiedBy] VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimUserID] PRIMARY KEY CLUSTERED ([DimUserID] ASC),
    CONSTRAINT [fk_DimUser_DateOfBirthID] FOREIGN KEY ([DateOfBirthID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_DimUser_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [Shared].[DimUser]([SourceKey] ASC);


GO



GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromOLAP', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.[User]', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'UserId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	Name = CONVERT(VARCHAR(255),
		CASE 
			WHEN (FirstName IS NULL AND LastName IS NULL) THEN 
				CASE
					WHEN UserType = ''organization'' THEN COALESCE((OrgName +'' User''), ''Unidentified Organization User'')
					WHEN UserType IS NULL THEN ''Unidentified User''
					ELSE ''Unidentified '' +UserType +'' User''
				END
			WHEN (FirstName IS NULL AND LastName IS NOT NULL) THEN LastName
			WHEN (LastName IS NULL AND FirstName IS NOT NULL) THEN FirstName
			WHEN (LastName IS NOT NULL AND FirstName IS NOT NULL) THEN FirstName + '' '' + LastName
		END
		),
	UserType,
	OrgName,
	DateOfBirthID = COALESCE(DateOfBirthID, -1), 
	DimRoleSourceKey, 
	FirstName, 
	MiddleName, 
	LastName, 
	Sex, 
	PhoneNumber, 
	Email, 
	IsEnabled,
	CreatedDateID,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
	
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
		UserType = COALESCE(u.Namespace, r.namespace),
		DimRoleSourceKey = COALESCE(r.RoleID,	-1),
		u.IsEnabled
	FROM dbo.[USER] as u 
	LEFT JOIN dbo.userrole as ur ON
		ur.UserId = u.UserId
	LEFT JOIN dbo.Role AS r ON
		r.RoleId = ur.RoleId
	LEFT JOIN 	
	(
		SELECT 
			pa.PagaAccountId,
			pa.PagaAccountNumber,
			pa.PagaAccountStatusId,
			pa.RegistrationDate,
			pau.UserId,
			pau.PagaAccountUserTypeId,
			pan.NatureId
		FROM [dbo].[PagaAccount] AS pa
		LEFT JOIN dbo.PagaAccountUser AS pau ON
			pa.PagaAccountId = pau.PagaAccountId
		LEFT JOIN dbo.PagaAccountNature AS pan ON
			pa.PagaAccountId = pan.PagaAccountId
	) AS pa ON
		pa.UserId = u.UserId
	LEFT JOIN 
	(
		SELECT
			OrgName = o.Name,
			ouu1.UserId
		FROM dbo.OrganizationUnitUser AS ouu1
		INNER JOIN dbo.organizationUnit AS ou ON 
			ouu1.OrganizationUnitId = ou.OrganizationUnitId
		INNER JOIN dbo.Organization AS o
			ON ou.OrganizationId = o.OrganizationId
	) AS ouu ON 
		u.UserId = ouu.userId
) AS base_query

', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';

