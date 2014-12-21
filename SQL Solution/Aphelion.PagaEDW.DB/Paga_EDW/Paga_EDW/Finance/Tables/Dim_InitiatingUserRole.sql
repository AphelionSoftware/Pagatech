CREATE TABLE [Finance].[DimInitiatingUserRole] (
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
    CONSTRAINT [fk_DimInitiatingUserRole_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID]),
    CONSTRAINT [fk_DimInitiatingUserRole_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimInitiatingUserRole_SourceKey]
    ON [Finance].[DimInitiatingUserRole]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimInitiatingUserRole';

