CREATE TABLE [Shared].[DimUserRole] (
    [DimUserRoleID]        INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NULL,
    [DimUserID]            INT           NOT NULL,
    [DimRoleID]            INT           NOT NULL,
    [RolePriority]         SMALLINT      NOT NULL,
    [sys_CreatedBy]        VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]       VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]       DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]             BIT           DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimUserRole] PRIMARY KEY CLUSTERED ([DimUserRoleID] ASC),
    CONSTRAINT [fk_DimUserRole_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID]),
    CONSTRAINT [fk_DimUserRole_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID])
);


















GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.UserRole', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'8', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2200', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'UserRoleId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id,  	SYS_CHANGE_VERSION = ct.as_of_change_version, 	SourceKey, 	DimUserSourceKey, 	DimRoleSourceKey, 	RolePriority FROM ( 	SELECT 		SourceKey = ur.UserRoleId, 		DimUserSourceKey = UserID, 		DimRoleSourceKey = ur.RoleID, 		RolePriority = ur.roleNum 	FROM  	( 		SELECT  			ROW_NUMBER() OVER (PARTITION BY u.UserID ORDER BY u.RoleID DESC) AS roleNum, 			u.[UserId], 			u.[RoleId], 			u.userRoleId 		FROM [dbo].[UserRole] AS u 	) AS ur ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';






GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Shared].[DimUserRole] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Shared_DimUserRole AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimUserID = Source.DimUserID,Target.DimRoleID = Source.DimRoleID,Target.RolePriority = Source.RolePriority,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimUserID,DimRoleID,RolePriority,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimUserID,Source.DimRoleID,Source.RolePriority,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimUserRole';






GO
CREATE NONCLUSTERED INDEX [ix_DimUserRole_UserID]
    ON [Shared].[DimUserRole]([DimUserRoleID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimUserRole_SourceKey]
    ON [Shared].[DimUserRole]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimUserRole_DimUserID]
    ON [Shared].[DimUserRole]([DimUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimUserRole_ChangeVersion]
    ON [Shared].[DimUserRole]([SYS_CHANGE_VERSION] ASC);

