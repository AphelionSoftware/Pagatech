CREATE TABLE [dbo].[Dim_InitiatingUserRole] (
    [DimInitiatingUserRoleID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]               INT           NOT NULL,
    [Name]                    VARCHAR (255) NULL,
    [DimUserID]               INT           NOT NULL,
    [DimRoleID]               INT           NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DeltaHash]               BIGINT        NULL,
    [sys_CreatedBy]           VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]          VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimInitiatingUserRole] PRIMARY KEY CLUSTERED ([DimInitiatingUserRoleID] ASC),
    CONSTRAINT [fk_DimInitiatingUserRole_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [dbo].[Dim_Role] ([DimRoleID]),
    CONSTRAINT [fk_DimInitiatingUserRole_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimInitiatingUserRole_SourceKey]
    ON [dbo].[Dim_InitiatingUserRole]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Dim_InitiatingUserRole';

