CREATE TABLE [Shared].[DimPrimaryUserRole] (
    [DimPrimarygUserRoleID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]             INT           NOT NULL,
    [Name]                  VARCHAR (255) NULL,
    [DimUserID]             INT           NOT NULL,
    [DimRoleID]             INT           NOT NULL,
    [SourceKeyHash]         BIGINT        NULL,
    [DeltaHash]             BIGINT        NULL,
    [sys_CreatedBy]         VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimInitiatingUserRole] PRIMARY KEY CLUSTERED ([DimPrimarygUserRoleID] ASC),
    CONSTRAINT [fk_DimInitiatingUserRole_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID]),
    CONSTRAINT [fk_DimInitiatingUserRole_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID])
);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.UserRole', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPrimaryUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'8', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPrimaryUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2700', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPrimaryUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'UserRoleId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPrimaryUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	SourceKey,
	DimUserSourceKey,
	DimRoleSourceKey
FROM
(
	SELECT
		SourceKey = ur.UserRoleId,
		DimUserSourceKey = UserID,
		DimRoleSourceKey = ur.RoleID
	FROM 
	(
		SELECT 
			ROW_NUMBER() OVER (PARTITION BY u.UserID ORDER BY u.RoleID DESC) AS roleNum,
			u.[UserId],
			u.[RoleId],
			u.userRoleId
		FROM [dbo].[UserRole] AS u
	) AS ur
	WHERE
		ur.roleNum = 1
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimPrimaryUserRole';

