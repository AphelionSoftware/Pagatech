CREATE TABLE [Staging].[Shared_DimUserRole] (
    [Name]                 VARCHAR (255) NULL,
    [RolePriority]         SMALLINT      NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [DimRoleSourceKey]     INT           NOT NULL,
    [DimUserSourceKey]     INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NULL,
    [paga_change_log_id]   INT           NULL,
    [row_id]               INT           IDENTITY (1, 1) NOT NULL
);










GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimUserRole]
    ON [Staging].[Shared_DimUserRole]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [row_id] ASC);



