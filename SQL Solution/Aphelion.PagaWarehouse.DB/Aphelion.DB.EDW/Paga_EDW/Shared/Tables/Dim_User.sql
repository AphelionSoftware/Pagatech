CREATE TABLE [Shared].[DimUser] (
    [DimUserID]            INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]            INT             NOT NULL,
    [DimDateOfBirthID]     INT             NULL,
    [FirstName]            VARCHAR (255)   NULL,
    [MiddleName]           VARCHAR (255)   NULL,
    [LastName]             VARCHAR (255)   NULL,
    [Gender]               VARCHAR (50)    NULL,
    [PhoneNumber]          VARBINARY (256) NULL,
    [Email]                VARCHAR (100)   NULL,
    [IsEnabled]            BIT             NULL,
    [DimPrimaryRoleID]     INT             NOT NULL,
    [DimCreatedDateID]     INT             NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]       DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]        VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]        DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT             DEFAULT ((1)) NOT NULL,
    [Name]                 VARCHAR (255)   NULL,
    [SYS_CHANGE_VERSION]   BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)        DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimUserID] PRIMARY KEY CLUSTERED ([DimUserID] ASC),
    CONSTRAINT [fk_DimUser_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_DimUser_DimDateOfBirthID] FOREIGN KEY ([DimDateOfBirthID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_DimUser_DimPrimaryRoleID] FOREIGN KEY ([DimPrimaryRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID])
);






































GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUser_SourceKey]
    ON [Shared].[DimUser]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2100', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';






GO



GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Users', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';




GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'7', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'UserId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromCube', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'--DimUser 
SELECT 	
	ct.SYS_CHANGE_OPERATION, 
	SYS_CHANGE_VERSION = ct.as_of_change_version, 
	SourceKey , 	
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
	DateOfBirthID = COALESCE(DateOfBirthID, 18991231),  	
	DimPrimaryRoleID = COALESCE(DimPrimaryRoleID,-1), 	
	FirstName,  	
	MiddleName,  	
	LastName,  	
	Gender,  	
	IsEnabled, 	
	CreatedDateID =COALESCE(CreatedDateID, 18991231)
FROM
( 	
	SELECT  		
		SourceKey = u.UserId, 		
		FirstName = CASE WHEN LEN(u.FirstName) = 0 THEN NULL ELSE CONVERT(VARCHAR(255), u.FirstName) END, 		
		MiddleName = CASE WHEN LEN(u.MiddleName) = 0 THEN NULL ELSE CONVERT(VARCHAR(255),u.MiddleName) END, 		
		LastName = CASE WHEN LEN(u.LastName) = 0 THEN NULL ELSE CONVERT(VARCHAR(255),u.LastName) END, 		
		Gender = u.GenderId, 		
		DateofBirthID = CONVERT(INT,CONVERT(VARCHAR(8),u.dateOfBirth,112)), 		
		CreatedDateID = CONVERT(INT,CONVERT(VARCHAR(8),u.CreatedDate,112)), 		
		UserType = u.Namespace, 		
		DimPrimaryRoleID = pr.RoleId,		
		u.IsEnabled,
		ouu.OrgName 	
	FROM dbo.Users as u  	
	CROSS APPLY
	( 		
		SELECT TOP 1
			RoleId
		FROM dbo.UserRole as ur
		WHERE
			ur.userID = u.userID
		ORDER BY
			 RoleID DESC			
	) as PR	
	LEFT JOIN  	
	( 		
		SELECT 			
			OrgName = o.Name, 			
			ouu1.UserId, 			
			ou.OrganizationUnitId 		
		FROM dbo.OrganizationUnitUser AS ouu1 		
		INNER JOIN dbo.organizationUnit AS ou ON  			
			ouu1.OrganizationUnitId = ou.OrganizationUnitId 		
		INNER JOIN dbo.Organization AS o ON 
			ou.OrganizationId = o.OrganizationId 	
	) AS ouu ON  		
			u.UserId = ouu.userId
) AS base_query
', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';




















GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw SET edw.SYS_CHANGE_OPERATION = stg.SYS_CHANGE_OPERATION,edw.SYS_CHANGE_VERSION = stg.SYS_CHANGE_VERSION, 
	edw.SourceKey = stg.SourceKey,
	edw.DimDateOfBirthID = stg.DimDateOfBirthID,
	edw.FirstName = stg.FirstName,
	edw.MiddleName = stg.MiddleName,
	edw.LastName = stg.LastName,
	edw.Gender = stg.Gender,
	edw.PhoneNumber = stg.PhoneNumber,
	edw.Email = stg.Email,
	edw.IsEnabled = stg.IsEnabled,
	edw.DimPrimaryRoleID = stg.DimPrimaryRoleID,
	edw.DimCreatedDateID = stg.DimCreatedDateID,
	edw.Name = stg.Name
FROM Shared.DimUser AS edw
INNER JOIN Paga_Staging.Updates.Shared_DimUser AS stg ON
		edw.SourceKey = stg.SourceKey;', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUser';





