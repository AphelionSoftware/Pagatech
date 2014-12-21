CREATE TABLE [Finance].[DimRecipientUserRole] (
    [DimRecipientUserRoleID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              INT           NOT NULL,
    [Name]                   VARCHAR (255) NULL,
    [DimUserID]              INT           NOT NULL,
    [DimRoleID]              INT           NOT NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DeltaHash]              BIGINT        NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimRecipientUserRole] PRIMARY KEY CLUSTERED ([DimRecipientUserRoleID] ASC),
    CONSTRAINT [fk_DimRecipientUserRole_DimRoleID] FOREIGN KEY ([DimRoleID]) REFERENCES [Shared].[DimRole] ([DimRoleID]),
    CONSTRAINT [fk_DimRecipientUserRole_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID])
);

