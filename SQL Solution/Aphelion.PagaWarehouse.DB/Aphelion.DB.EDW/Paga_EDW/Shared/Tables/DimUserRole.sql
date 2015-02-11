﻿CREATE TABLE [Shared].[DimUserRole] (
    [DimUserRoleID]  INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]      INT           NOT NULL,
    [Name]           VARCHAR (255) NULL,
    [DimUserID]      INT           NOT NULL,
    [DimRoleID]      INT           NOT NULL,
    [RolePriority]   SMALLINT      NOT NULL,
    [SourceKeyHash]  BIGINT        NULL,
    [DeltaHash]      BIGINT        NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimUserRole] PRIMARY KEY CLUSTERED ([DimUserRoleID] ASC),
    CONSTRAINT [fk_DimUserRole_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID]),
    CONSTRAINT [fk_DimUserRole_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID])
);




GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.UserRole', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'8', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2700', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'UserRoleId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 	ct.SYS_CHANGE_OPERATION,  	SYS_CHANGE_VERSION = ct.as_of_change_version, 	SourceKey, 	DimUserSourceKey, 	DimRoleSourceKey, 	RolePriority FROM ( 	SELECT 		SourceKey = ur.UserRoleId, 		DimUserSourceKey = UserID, 		DimRoleSourceKey = ur.RoleID, 		RolePriority = ur.roleNum 	FROM  	( 		SELECT  			ROW_NUMBER() OVER (PARTITION BY u.UserID ORDER BY u.RoleID DESC) AS roleNum, 			u.[UserId], 			u.[RoleId], 			u.userRoleId 		FROM [dbo].[UserRole] AS u 	) AS ur ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';



