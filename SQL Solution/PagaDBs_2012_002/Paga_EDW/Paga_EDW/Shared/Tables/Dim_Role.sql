CREATE TABLE [Shared].[DimRole] (
    [DimRoleID]         INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]         INT           NOT NULL,
    [DescriptionText]   VARCHAR (255) NULL,
    [Name]              VARCHAR (255) NULL,
    [SystemDescription] VARCHAR (100) NULL,
    [SourceKeyHash]     BIGINT        NULL,
    [DeltaHash]         BIGINT        NULL,
    [sys_CreatedBy]     VARCHAR (255) NOT NULL,
    [sys_CreatedOn]     DATETIME      NOT NULL,
    [sys_ModifiedBy]    VARCHAR (255) NOT NULL,
    [sys_ModifiedOn]    DATETIME      NOT NULL,
    CONSTRAINT [pk_DimRole] PRIMARY KEY CLUSTERED ([DimRoleID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimRole_SourceKey]
    ON [Shared].[DimRole]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimRole';

