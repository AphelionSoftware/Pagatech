CREATE TABLE [Staging].[Shared_DimUserRole] (
    [Name]                 VARCHAR (255) NULL,
    [RolePriority]         SMALLINT      NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [DimRoleSourceKey]     INT           NOT NULL,
    [DimUserSourceKey]     INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);



