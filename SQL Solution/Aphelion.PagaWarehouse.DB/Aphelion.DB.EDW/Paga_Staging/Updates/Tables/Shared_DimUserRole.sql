CREATE TABLE [Updates].[Shared_DimUserRole] (
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NULL,
    [DimUserID]            INT           NOT NULL,
    [DimRoleID]            INT           NOT NULL,
    [RolePriority]         SMALLINT      NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Shared_DimUserRole_SourceKey]
    ON [Updates].[Shared_DimUserRole]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

